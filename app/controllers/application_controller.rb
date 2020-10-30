class ApplicationController < ActionController::Base

   def after_sign_out_path_for(resource)
    new_admin_session_path # ログアウト後に遷移するpathを設定(admin側)
   end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :first_name_kana, :last_name_kana, :postcode, :address])
  end

end
