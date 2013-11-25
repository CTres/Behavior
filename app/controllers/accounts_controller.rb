class AccountsController <ApplicationController
  

  def index
    if current_user
      @user = current_user
      @account = current_user.account
      @products = @account.products
      @users = current_user.account.users
    end
  end
  
  def invite_user
  	account = 	current_user.account
  	email = 	params[:account][:user][:email]
  	name =		params[:account][:user][:name]

  	user = User.find_or_create_by_email(account, name, email)
  	respond_to do |format|
  		format.html {redirect_to :back}

  		#add user to account and invite them
  	end
  end

  def settings
      if current_user
        @user = current_user
        @account = current_user.account
        @users = current_user.account.users
      end
    end

end



