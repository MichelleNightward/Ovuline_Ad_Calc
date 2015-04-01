class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  
  def index
    #THIS IS ACTING A NEW CONTROLLER WOULD, CREATING COMPANY ENTRY IN DATABASE
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
    @quotes = Quote.all
  end

  def new
    @companies = Company.all
  end

  def dashboard
    @companies = Company.all
  end

  def edit
    @company = Company.find(params[:id])
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:notice] = 'Your company information has been added'
      session[:current_company_id] = @company.id
      redirect_to new_quote_path
    else
      render action: 'index'
     end
  end

  def update
    @company = Company.find(params[:id])
    if @company.update_attributes(company_params)
      flash[:notice] = 'Your company was updated'
      redirect_to employee_path
    else
      render action: 'new'
    end
  end

  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to employee_path, notice: 'Company was successfully destroyed.' }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Remember to update if/when company table has more columns added
    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:id, :email, :companyname, :name, :phone)
    end
end
