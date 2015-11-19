class GuestsController < ApplicationController

  before_action :def_user_guest_by_token, only: [:show]
  before_action :def_user, only: [:new, :update]
  before_action :def_guest, only: [:update]

  skip_before_action :authenticate_user!

  layout "guest"

  def show
    if @user
      @candidates = @user.candidates
      increment_viewed_counter
    else
      render text: "You don't have the permission to access this ressource"
    end
  end

  def update
    #toggle canceled
    if @guest.canceled == true
      @guest.canceled = false
    else
      @guest.canceled = true
    end
    @guest.save
    redirect_to dashboard_share_path
  end

  def new
    @guest = Guest.new
  end

  def create
    days_last = params['guest']['days'].to_i
    email = params['guest']['email'].nil? ? "" : params['guest']['email']
    description = params['guest']['description'].nil? ? "-" : params['guest']['description']
    url = params['guest']['url'].nil? ? "" : params['guest']['url']
    url = "http://" + url if url[0,7] != "http://"
    start = Time.now
    expires = start + days_last.days
    guest = Guest.create(
      user_id: current_user.id,
      token: generate_token,
      email: email,
      start: start,
      expires: expires,
      url: url,
      description: description,
      viewed_t: 0,
      dl_t: 0
    )
    # déplacé dans le modèle
    # UserMailer.invite_guest(guest, current_user).deliver_now
    redirect_to dashboard_share_path
  end

  private

  def def_user_guest_by_token
    @guest = Guest.where(token: params['id']).first
    if @guest
      if @guest.canceled == true
        @guest = nil
      else
        @user = @guest.user
      end
    end
  end


  def def_guest
    @guest = Guest.find(params['id'])
  end

  def def_user
    @user = User.find(params['user_id'])
  end

  def increment_viewed_counter
      @guest.viewed_t = 0 unless @guest.viewed_t
      @guest.viewed_t = @guest.viewed_t + 1
      @guest.save
  end

  def generate_token
    letters = (0...20).map { ('a'..'z').to_a[rand(26)] }.join
    numbers = (0...20).map { (0..9).to_a[rand(10)] }.join
    special = (0...10).map { ["=", "+"].to_a[rand(2)] }.join
    string = letters + numbers + special
    string.chars.shuffle.join
  end

end
