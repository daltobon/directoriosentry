class ContactsController < ApplicationController
	before_action :find_contact, only: [:show, :update, :edit, :destroy]
  
  def index
  	@contacts= Contact.all
    @contacts = Contact.order(:name)
   respond_to do |format|
      format.html
      format.csv { send_data @contacts.to_csv encoding:'ISO-8859-1'}
      format.xls
    end
 end

  def show
  end

  def new
  @contact = Contact.new
  end

  def edit
  end

  def create
  @contact = Contact.create(contact_params)
    if @contact.save  
  		redirect_to @contact
 	  else
 		   render :new
  	end
  end

  def update
   		if @contact.update(contact_params)
			redirect_to root_path
		else
			render 'edit'
		end
  end

  def destroy
  end

private
	  def contact_params
			params.require(:contact).permit(:name, :phone, :email, :office, :position)
	  end

  	def find_contact
		  @contact = Contact.find(params[:id])		
	  end
end
