class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  # def after_sign_in_path_for(resource)
  #   current_user_path
  # end

 def after_sign_in_path_for(resource)
  if user_signed_in?
    current_user. candidates.each do |candidate_id|
      candidate = Candidate.find(candidate_id)
      candidate.user_id = current_user.id
      candidate.save
    end
  end
  dashboard_index_path
 end

 def after_sign_up_path_for(resource)
   new_candidate_path
 end

 def after_sign_out_path_for(resource_or_scope)
   root_path
 end
end
