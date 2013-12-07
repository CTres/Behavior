class UsersController <ApplicationController

	def index
	end

	def invite_user
	end

	def destroy
	  @user = User.find(params[:id])
	  @user.destroy
	  respond_to do |format|
	    format.html {redirect_to :back}
	    format.js
	  end
	end
end
