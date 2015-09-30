class Admin::RepairsController < ApplicationController
	def index
		@repairs = Repair.where(:is_finished => nil)
		@completed_repairs = Repair.where(:is_finished => true)
	end	


	def edit
		@repair = Repair.find(params[:id])
	end	

	def update
		@repair = Repair.find(params[:id])

		if @repair.update_attributes safe_repair_params.merge(:is_finished => true)
		end
		redirect_to admin_repair_path
	end	

	def show
		@repair = Repair.find(params[:id])
	end	
  def safe_repair_params
    params.require(:repair).permit(:is_finished, :date_completed, :performed_by, :notes)
  end

end	