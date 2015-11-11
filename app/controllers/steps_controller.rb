class StepsController < ApplicationController

  before_action :set_steps_list
  before_action :set_step, only: [:init, :show]

  def init
  end

  def show
  end

  def next
    # TODO : avoid that user changes the GET value
    next_step = params['next']
    # TODO : allow only permit data
    # => in this case goto current_user passed step instead
    # TODO : save pushed data to user
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



end
