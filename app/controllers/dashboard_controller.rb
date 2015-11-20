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

  def application
  end

  def pdf
    respond_to do |format|
      format.pdf do
        render :pdf => "dossier_#{current_user.candidates.first.firstname}_#{current_user.candidates.first.lastname}",
               :template => 'dashboard/pdf.pdf.erb',
               :layout => 'pdf',
               :footer => {
                  :center => "Edoss.com, votre dossier en ligne",
               }
      end
    end
  end

  def pdf_guest
    respond_to do |format|
      format.pdf do
        render :pdf => "dossier_#{current_user.candidates.first.firstname}_#{current_user.candidates.first.lastname}",
               :template => 'dashboard/pdf_guest.pdf.erb',
               :layout => 'pdf',
               :footer => {
                  :center => "Edoss.com, votre dossier en ligne",
               }
      end
    end
  end

  private

  def set_candidates
    @candidates = Candidate.where(user_id: current_user.id)
  end

end
