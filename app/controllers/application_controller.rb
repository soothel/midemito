class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource

  # Define the permitted parameters for Devise.
  protected
 

  def layout_by_resource
    if devise_controller? and user_signed_in?
      'panel_admin'
    else
      'login'
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,:second_name,:first_surname,:second_surname,:username, :user_image])
  end



end
