class MycollectionsController < ApplicationController
 before_action :logged_in_user
 before_action :correct_user

  def show
    @user = User.find(params[:id])
  end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
	
# Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
	    store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
	
	
# Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
  
end