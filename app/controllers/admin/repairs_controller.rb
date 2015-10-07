class Admin::RepairsController < ApplicationController
	before_filter :authenticate_admin!
	
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
		send_text_message
	end	
  def safe_repair_params
    params.require(:repair).permit(:is_finished, :date_completed, :performed_by, :notes)
  end

  def send_text_message
    number_to_send_to = "3012571389"

    #twilio_sid = ENV["TWILIO_ACCOUNT_SID"]
    #twilio_token = ENV["TWILIO_AUTH_TOKEN"]
    #twilio_phone_number = ENV["TWILIO_PHONE_NUMBER"]
    twilio_sid = "AC8cd6478206bc43d090754e4ecaeeb2ac"
    twilio_token = "e8a290a6070158ba08a060ae9f117215"
    twilio_phone_number = "12406164389"
    message = "Your repair is complete! Please come pick it up."
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => message
    )
  end

end	