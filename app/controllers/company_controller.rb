class CompanyController < ApplicationController
  def index
  	@company= Company.all
  end

  def new
  	@company = Company.new
  end

  def create
  	@company = Company.new(company_params)
  	if @company.save
  		flash[:success] = "Aliado Comercial Creado Exitosamene"
  		redirect_to company_path(@company)
 	else	
 		flash[:danger] = "Ocurrió un error, revisa los datos"
 		render 'new'
  	end
  end

  def edit
  	@company= Company.find(params[:id])
  end

  def show
 
  end

  def update
  		if @company.update(company_params)
			flash[:info] = "Tu registro ha sido actualizado"
			redirect_to company_path(@company)
		else
			flash[:danger] = "Ha ocurrido un error, revisa e intenta de nuevo." 
			render 'edit'
		end
  end

  def destroy
  end

	private
	def company_params
		params.require(:company).permit(:name_company, :controller, :phone, :email, :quantityoffice)
	end

end
