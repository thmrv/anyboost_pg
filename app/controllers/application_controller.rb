class ApplicationController < ActionController::Base
    around_action :switch_locale
    # before_action :configure_permitted_parameters, if: :devise_controller?
 
 def switch_locale(&action)
   locale = params[:locale] || I18n.default_locale
   I18n.with_locale(locale, &action)
 end
end
