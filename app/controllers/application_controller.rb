class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for(resource)
    plans_path # 新規登録後リダイレクト
  end

  def after_sign_in_path_for(resource)
    plans_path # ログイン後リダイレクト
  end
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :email, :encrypted_password, :name, :profile, :occupation, :position])
  end
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == '3456'
    end
  end
end


