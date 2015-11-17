class GuestsController < ApplicationController
  before_action :def_guest, only: [:show]
  before_action :def_user, only: [:show]
  skip_before_action :authenticate_user!

  def show
    if @user
      increment_viewed_counter
    else
      render text: "You don't have the permission to access this ressource"
    end

  end

  private

  def def_guest
    @guest = Guest.where(token: params['id']).first
  end

  def def_user
    @user = @guest.user if @guest
  end

  def increment_viewed_counter
      @guest.viewed_t = 0 unless @guest.viewed_t
      @guest.viewed_t = @guest.viewed_t + 1
      @guest.save
  end

end
