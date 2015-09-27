class WelcomeController < ApplicationController
  def index
  	@bicycles = current_customer.bicycles.order('manufacturer DESC')
  end
  	
end

  
