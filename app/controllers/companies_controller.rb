class CompaniesController < ApplicationController
	before_action :find_company, only: [:show, :update, :edit, :destroy]
  
  def index
  	@companies= Company.all
  	@companies = Company.order(:name_company)
	 respond_to do |format|
	    format.html 
	    format.csv { send_data @companies.to_csv encoding:'ISO-8859-1' }
	    format.xls
	  end
  end

  def show
  	@contacts= Contact.all
  end

  def new
  	@company = Company.new
  end

  def edit
  end

  def create
  	@company = Company.create(company_params)
  	  	if @company.save  
  		redirect_to @company
 	else
 		render :new
  	end
  end

  def update
   		if @company.update(company_params)
			redirect_to root_path
		else
			render 'edit'
		end
  end

  def destroy
  end

private
	  def company_params
			params.require(:company).permit(:name_company, :controller, :phone, :email, :quantityoffice, :cellphone)
	  end

  	  def find_company
		@company = Company.find(params[:id])		
	  end
end
