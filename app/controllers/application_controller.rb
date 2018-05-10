require 'breadcrumbs_builder'
require 'breadcrumbs_title_builder'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource

  def per_page(page_size_name = nil, page_size = MIN_PAGE_SIZE)
    (cookies[page_size_name + '_per_page'] ? cookies[page_size_name + '_per_page'] :  page_size).to_i
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])

    # Devise password edit
    update_attrs = [:password, :password_confirmation, :current_password]
    devise_parameter_sanitizer.permit :account_update, keys: update_attrs
  end

  def layout_by_resource
    devise_controller? ? 'login' : 'application'
  end

end
