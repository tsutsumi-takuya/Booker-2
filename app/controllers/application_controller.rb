class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters

		added_attrs = [ :email, :user_name, :password, :password_confirmation ]
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email])
	   	devise_parameter_sanitizer.permit(:sign_in, keys: [:name,:email])

	end
	def after_sign_in_path_for(resource)

	    user_path(resource.id)

	end
	def after_sign_out_path_for(resource)

	    root_path

	end
	def after_sign_up_path_for(resource)

	    user_path(resource.id)

	end
end
