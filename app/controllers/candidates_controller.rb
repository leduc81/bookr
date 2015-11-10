class CandidatesController < ApplicationController
  before_action :set_candidate, only: [:show, :edit, :update, :destroy]

  def index
    @candidates = Candidate.all
  end

  def show
  end

  def new
    @candidate = Candidate.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @candidate.delete
    redirect_to
  end

  private

  def set_candidate
    @candidate = Candidate.find(params[:id])
  end

  # def candidate_params
  #   params.require(:candidate).permit()
  # end

end
