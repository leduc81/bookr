class DashboardController < ApplicationController
  def index
    @candidates = Candidate.where(user_id: current_user.id)
  end
end
