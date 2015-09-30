class AdminsController < ApplicationController
	before_filter :authenticate_admin!,  except: :index


	def index

	end	
end
