class ApplicationController < ActionController::Base
    before_action :configure_devise_parameters, if: :devise_controller?
    def configure_devise_parameters
        devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:username, :role, :email, :password, :password_confirmation, :isActive, :photo)}
    end
end
