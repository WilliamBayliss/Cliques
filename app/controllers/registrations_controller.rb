class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :birthday, :password, :password_confirmation)
  end
  
  def after_sign_up_path_for(resource)
    root_path
  end

  def after_inactive_sign_up_path_for(resource)
    root_path
  end
end
