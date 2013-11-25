class ProductsController < ApplicationController
	def show
		@account = current_user.account
	end
end
