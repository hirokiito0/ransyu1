class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # devise_controllerの機能（ユーザー登録、ログイン認証）行う場合
  # 先に下記のconfigure_permitted_parametersの処理を行う
  
  
  protected
  
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    # ユーザー登録(sign_up)の際にユーザー名(name)のデータ処理を許可する
    
  end
  
end
