class ConceptsController <ApplicationController
	before_filter :find_concept, only: [:show, :update, :edit]

	def new
		@product = Product.find(params[:product_id])
		@concept = @product.concepts.build
	end

	def create
		@product = Product.find(params[:product_id])
	    @concept = @product.concepts.new(params[:concept])
	    @concept.state = 'idea'
	    respond_to do |format|
	      if @concept.save
	        #add the original poster as a feature user. 
	        format.html { redirect_to edit_product_concept_path(@product, @concept) }
	      else
	        render "new"
	      end
	    end
	  end

	def edit
		@product = @concept.product
	end


	def show
		@account = current_account
		@product = @concept.product
		@assumptions = @concept.assumptions
	end

	def update
    respond_to do |format|
      if @concept.update_attributes(params[:concept])
        format.html { redirect_to :back }
        format.js {}
      else
        render action: "edit" 
      end
    end
 	end

  def find_concept
  	@concept = Concept.find(params[:id])
  end
end
