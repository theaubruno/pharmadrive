class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if current_user.role == 'doctor'
      doctor_patients_path(current_user)
    else
      pharmacy_lists_path(current_user)
    end
  end
end
