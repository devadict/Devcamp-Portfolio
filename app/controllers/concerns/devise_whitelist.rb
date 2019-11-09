module DeviseWhitelist
	extend ActiveSupport::Concern

	included do
		before_action :configue_permitted_parameters, if: :devise_controller?
	end

	def configue_permitted_parameters
		devise_paramater_sanitizer.permit(:sign_up, keys: [:name])
		devise_paramater_sanitizer.permit(:account_update, keys: [:name])
	end
end