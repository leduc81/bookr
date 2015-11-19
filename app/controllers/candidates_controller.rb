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
    @candidate = Candidate.new(candidate_params)
    if @candidate.save
      redirect_to candidates_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @candidate.update(candidate_params)
    redirect_to dashboard_index_path
  end

  def destroy
    @candidate.delete
    redirect_to
  end

  private

  def set_candidate
    @candidate = Candidate.find(params[:id])
  end

  def candidate_params
    params.require(:candidate).permit(:firstname, :lastname, :nationality, :income, :status, :status_from_date, :phone_number, :biographie, :status, :companie, :position, :picture )
  end
end

