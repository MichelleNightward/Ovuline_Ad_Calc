class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  def index
    #THIS IS ACTING A NEW CONTROLLER WOULD, CREATING COMPANY ENTRY IN DATABASE
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
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
      send_simple_message
    else
      render action: 'new'
     end
  end


  def update
    @company = Company.find(params[:id])
    if @company.update_attributes(company_params)
      flash[:notice] = 'Your company was updated'
      redirect_to @company
    else
      render action: 'new'
    end
  end

  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
    end
  end

  def send_simple_message
    RestClient.post "https://api:key-5f4ada711a8a86a1292bcfe23aa9d0aa"\
    "@api.mailgun.net/v3/sandbox3fcc0ad1e9ee457da78753f228405f7e.mailgun.org/messages",
    :from => "Excited User <mailgun@sandbox3fcc0ad1e9ee457da78753f228405f7e.mailgun.org>",
    :to => "gordon.motsinger@gmail.com",
    :subject => "Hello",
    :text => "Testing some Mailgun awesomness!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:id, :email, :companyname, :name, :phone)
    end
end
