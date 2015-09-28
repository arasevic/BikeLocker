class RepairsController < ApplicationController
	before_filter :authenticate_customer!,  except: :index

	def index
		@bicycle = current_customer.bicycles.find(params[:bicycle_id])
  	@repairs = @bicycle.repairs
	end

	def show
    @bicycle = current_customer.bicycles.find(params[:bicycle_id])
  	@repair = @bicycle.repairs.find(params[:id])
  end

  def new
  	@bicycle = current_customer.bicycles.find(params[:bicycle_id])
  	@repair = @bicycle.repairs.build
  end

  def create
  	@bicycle = current_customer.bicycles.find(params[:bicycle_id])
  	@repair = @bicycle.repairs.build safe_repair_params
    if @repair.save
      flash[:notice] = "This repair was just created successfully:"
      redirect_to bicycle_repair_path(@bicycle, @repair)
    else
      flash.now[:alert] = @repair.errors.first
      render 'new'
    end
  end	

  def safe_repair_params
    params.require(:repair).permit(:service_requested, :date_scheduled)
  end
end
