class DashboardController < ApplicationController
  def index
    @candidates = Candidate.all
  end
end
