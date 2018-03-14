class User::RegistrationsController < Devise::RegistrationsController
	before_action :configure_permitted_parameters


	protected

	def configure_permitted_parameters
		devise_paramenter_sanitizer.permit(:sign_up, keys:[:first_name, :last_name])
		devise_paramenter_sanitizer.permit(:account_update, keys:[:first_name, :last_name])
	end
end