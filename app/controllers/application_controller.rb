# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    attributes = [ :post_code, :address, :biography]
    devise_parameter_sanitizer.permit :sign_in, keys: attributes
    devise_parameter_sanitizer.permit :account_update, keys: attributes
  end

  private

  def after_sign_in_path_for(resource_or_scope)
    users_path
  end
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
  def after_edit_user_registration_path_for(resource_or_scope)
    users_path
  end
end
