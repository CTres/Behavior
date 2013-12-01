class MetricsController <ApplicationController
	before_filter :find_metric_owner, only: [:create, :show]

  def show
  end
  
	def create
    puts params.fetch(params[:owner_type])
    @metric = @owner.metrics.create(params[params[:owner_type]][:metric])
    respond_to do |format|
      if @metric.save
        format.html {redirect_to :back}
        format.js {}
      end
    end
	end

  def destroy
    @metric = Metric.find(params[:id])
    @metric.destroy
    respond_to do |format|
      format.html {redirect_to :back}
      format.js
    end
  end

 	private
 	def find_metric_owner
    @klass = params[:owner_type].capitalize.constantize
    @owner = @klass.find(params[:owner_id])
  end



end
