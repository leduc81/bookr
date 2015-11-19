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

  def pdf
    respond_to do |format|
      format.pdf do
        render :pdf => "dossier",
               :template => 'dashboard/pdf.pdf.erb',
               :layout => 'pdf',
               :footer => {
                  :center => "Edoss, votre dossier en ligne",
               }
      end
    end
  end

  private

  def set_candidates
    @candidates = Candidate.where(user_id: current_user.id)
  end

end
