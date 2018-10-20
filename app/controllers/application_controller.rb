class ApplicationController < ActionController::Base
  rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render :text => exception, :status => 500
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  layout :layout

   private
   def layout
     # only turn it off for login pages:
     is_a?(Devise::SessionsController) ? false : "main/layout-2"
     # or turn layout off for every devise controller:
     # devise_controller? && "application"
   end

   # Overwriting the sign_out redirect path method
   def after_sign_out_path_for(resource_or_scope)
     root_url
   end

end
