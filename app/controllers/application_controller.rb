class ApplicationController < ActionController::Base

  def after_sign_up_path_for(resource)
    plans_path # 新規登録後リダイレクト
  end

  def after_sign_in_path_for(resource)
    plans_path # ログイン後リダイレクト
  end
  end


