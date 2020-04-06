class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # def after_update_path_for(resource)
  #  culture_path(resource)
  # end

  # def after_sign_up_path_for(resource)
  #  culture_path(resource)
  # end

  # def user_root_path
  #  culture_path(current_user)
  # end

  def configure_permitted_parameters
    att_create = %i[full_name username email role_id password password_confirmation remember_me]
    att_update = %i[full_name username email role_id password current_password]
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(att_create) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(att_update) }
  end
end
