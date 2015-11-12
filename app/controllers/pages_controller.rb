class PagesController < ApplicationController
  before_action :set_candidates, only: [:step_two]

  def home
  end

  def step_two
  end

  private

  def set_candidates
    # session['candidates'] # [25,26,27]
    @candidates = Candidate.where(id: session['candidates'])
    @user_candidate = Candidate.find(session['user_candidate'])
  end


end
