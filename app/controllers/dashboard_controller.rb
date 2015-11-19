class DashboardController < ApplicationController
  before_action :set_candidates


  def index
  end

  def candidates
  end

  def share
  end

  def proofs
  end

  private

  def set_candidates
    @candidates = Candidate.where(user_id: current_user.id)
  end

end
