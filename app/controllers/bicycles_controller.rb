class BicyclesController < ApplicationController
	before_filter :authenticate_customer!,  except: :index

	def index
		@bicycles = current_customer.bicycles if current_customer
	end

	def show
    @bicycle = current_customer.bicycles.find(params[:id])

  end

  def new
  	@bicycle = current_customer.bicycles.build
  end

  def create
  	@bicycle = current_customer.bicycles.build safe_bicycle_params
  
    if @bicycle.save
      flash[:notice] = "This Bike was just added to your locker successfully:"
      redirect_to bicycle_path(@bicycle)
    else
      flash.now[:alert] = @bicycle.errors.first
      render 'new'
    end
  end	

  def safe_bicycle_params
    params.require(:bicycle).permit(:manufacturer, :model, :model_year, :serial_number)
  end
end
