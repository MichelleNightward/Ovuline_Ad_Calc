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
      send_simple_message
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

  def send_simple_message
      @emails = EmployeeEmail.all
      if @emails == []
        return
      else
      RestClient.post "https://api:key-5f4ada711a8a86a1292bcfe23aa9d0aa"\
      "@api.mailgun.net/v2/sandbox3fcc0ad1e9ee457da78753f228405f7e.mailgun.org/messages",
      :from => "Excited User <mailgun@sandbox3fcc0ad1e9ee457da78753f228405f7e.mailgun.org>",
      :to => send_who_us,
      :subject => "Ovuline Notification Test",
      :text => "This is the Ovuline Notification System test message! #{@company.companyname} registered!"
      end
  end
    
  def send_who_us
    @emails = EmployeeEmail.all
    @who_array = []
    @emails.each do |f|
        @who_array << f.email
    end
    @who=""
    @who_array.each do |f|
        @who << "#{f}"
        #need to break this down to test it piece by piece
        if f != @who_array[-1]
            @who << ", "
        end
    end
    return @who

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
