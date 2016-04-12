class ContactsController < ApplicationController
  
  def index
  	@contact = Contact.new
  	@contacts = Contact.all
  end

  def create
  	contact = params['contact']
  	name = contact['name']
  	number = contact['number']
  	@contact = Contact.create(name: name, number: number)
  	flash[:success] = "Contact created"
  	redirect_to "/contacts/show"
  end

  def show
  	@contacts = Contact.all
  end

  def edit
  	@contact = Contact.find(params[:id])
  end


  def update
  	contact = params['contact']
  	name = contact['name']
  	number = contact['number']
  	@contact = Contact.find(params[:id])
  	@contact.update(name: name, number: number)
  	redirect_to "/contacts/show"
  end

  def destroy
  	Contact.find(params[:id]).destroy
    redirect_to "/contacts/show"
  end


end
