class ApplicationController < ActionController::Base
  skip_forgery_protection
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."

    redirect_back fallback_location: root_url
  end

  # you can delete this
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up) {
  #       |u| u.permit(:email, :password, :password_confirmation, :token, :avatar)}

  #   devise_parameter_sanitizer.permit(:account_update) { 
  #     |u| u.permit(:email, :password, :password_confirmation, :current_password, :avatar)}
  # end
end
