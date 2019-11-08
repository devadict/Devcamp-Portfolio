class ApplicationController < ActionController::Base

	before_filter :configue_permitted_parameters, if: :devise_controller?

	def configue_permitted_parameters
		devise_paramater_sanitizer.permit(:sign_up, keys: [:name])
		devise_paramater_sanitizer.permit(:account_update, keys: [:name])
	end

end
