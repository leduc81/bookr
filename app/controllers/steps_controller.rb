class StepsController < ApplicationController

  before_action :set_steps_list
  before_action :set_step, only: [:init, :show]
  # before_action :set_candidate, only: [:show, :next]

  def init
     @candidate = Candidate.new
  end

  def show
  end

  def next
    # TODO : avoid that user changes the GET value


    next_step = params['next']

    # TODO : allow only permit data
    # => in this case goto current_user passed step instead

   # SAVE INPUTS TO SESSION
    params[:candidate].each do |param|
      # TODO: securité limiter au méthodes setter attendues
      session[param[0]] = param[1]
    end
    # PERSIST CANDIDATE IF REQUESTED IN YML
    if params[:persist]

      # construire / mettre à jour l'objet
      step_two if next_step == "pages_step2_path"
      # step_three + route
      # step_four + route
    end

    # REDIRECT TO STEP OR PATH
    if next_step[-5,5] == "_path"
      redirect_to send next_step # as a PATH
    else
      redirect_to step_path(next_step) # as an ID
    end
  end

  private

  # TODO: avoid loading each time ?
  def set_steps_list
    @steps = YAML.load_file(Rails.root + 'config/steps.yml')
    #@steps['step1.1']
  end

  # TODO: secure inputs
  def set_step
    step_id = params['id'] ? params['id'] : @steps['init']
    @step = @steps[step_id]
  end

  def step_two
    candidates = []
    session['dossier_people'].to_i.times do
      candidate = Candidate.new
      candidate.dossier_zip = session['dossier_zip']
      candidate.dossier_people = session['dossier_people'].to_i
      candidate.dossier_max_rent = session['dossier_max_rent'].to_i
      candidate.performed_step = params['next']
      candidate.save
      candidates << candidate.id
    end
    reset_session
    session['candidates'] = candidates
    session['user_candidate'] = session['candidates'].first
  end


  def step_params
     params.require(:candidate).permit(:id, :dossier_zip, :dossier_people, :dossier_max_rent)
  end


end
