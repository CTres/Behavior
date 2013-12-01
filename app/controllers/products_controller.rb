class ProductsController < ApplicationController
	before_filter :find_product, only: [:update, :show]

	def new
		@product = current_user.account.products.new
	end

	def create
		@product = current_user.account.products.create(params[:product])
		respond_to do |format|
			if @product.save
				format.html { redirect_to edit_product_path(@product) }
			end
		end
	end

	def show
		@product = Product.find(params[:id])
		@account = current_account
		@concepts = @product.concepts
		# @ideas   = @product.concepts.where(:state == 'idea')
	end

	def update
    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to :back }
        format.js {}
        
      else
        render action: "edit" 
      end
    end
 	end

  def find_product
  	@product = Product.find(params[:id])
  end
end
