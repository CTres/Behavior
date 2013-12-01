class AccountsController <ApplicationController
before_filter :authenticate_user!

  def new
    @account = current_account
    @account.metrics.build
  end

  def index
    
    if current_user
      @user = current_user
      @account = current_user.account
      @products = @account.products
      @users = current_user.account.users
      @metrics = @account.metrics
    end
  end
  
  def invite_user
  	account = 	current_account
  	email = 	params[:account][:user][:email]
  	name =		params[:account][:user][:name]

  	user = User.find_or_create_by_email(account, name, email)
  	respond_to do |format|
  		format.html {redirect_to :back}

  		#add user to account and invite them
  	end
  end

  def settings
    @user = current_user
    @account = current_account
    @users = current_user.account.users
  end

  def update
    @account = current_account
    respond_to do |format|
      if @account.update_attributes(params[:account])
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  def vision
    @account = current_account
    respond_to do |format|
      format.html { redirect_to :back }
      format.js {}
    end
  end

end



