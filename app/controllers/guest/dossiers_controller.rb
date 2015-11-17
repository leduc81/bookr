class Guest::DossiersController < ActionController::Base
  # before_action :authenticate_user!

  def show
    @user = User.find(params['id'])
  end

  private

end
