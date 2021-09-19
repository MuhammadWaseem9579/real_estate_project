class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar,:avatar1,:first_name,:last_name,:address,:city,:cnic_no,:cnic_image,:phone_no,:profile_image])
    devise_parameter_sanitizer.permit(:account_update, keys:[:avatar,:avatar1,:first_name,:last_name,:address,:city,:cnic_no,:cnic_image,:phone_no,:profile_image])
  end
end
