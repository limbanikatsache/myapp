class CallsController < ApplicationController
	
	def index
	@call = Call.new
	@calls = Call.all

	@contact = Contact.new
	@contacts = Contact.all
	end

	def create
	call = params['call']
	number = call['number']
	time = call['time']
	@call = Call.create(number: number, time: time)
	redirect_to "/calls/show"
	end

	def show
	@calls = Call.all	
	end

	def edit
	@contacts = Contact.all
  	@call = Call.find(params[:id])
  	end

 	def update
	call = params['call']
  	number = call['number']
  	time = call['time']
  	@call = Call.find(params[:id])
  	@call.update(number: number , time: time)
  	redirect_to "/calls/show"
 	end



  	def destroy
  	Call.find(params[:id]).destroy
    redirect_to "/calls/show"
  	end


end
