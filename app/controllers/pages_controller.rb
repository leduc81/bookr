class PagesController < ApplicationController
  before_action :set_candidates, only: [:step_two, :step_three]

  def home
  end

  def step_two
    @rental_surface = YAML.load_file(Rails.root + 'config/avr_price_per_district.yml')

    @max_surface = @user_candidate.dossier_max_rent / @rental_surface[@user_candidate.dossier_zip.to_i].to_i
  end

  def step_three
  end

  private

  def set_candidates
    # session['candidates'] # [25,26,27]
    @candidates = Candidate.where(id: session['candidates'])
    @user_candidate = Candidate.find(session['user_candidate'])
  end


end
# dossier_zip dossier_max_rent
