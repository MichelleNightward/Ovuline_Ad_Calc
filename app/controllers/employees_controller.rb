class EmployeesController < ApplicationController

  #this is coppied directly from quotes_controller
  def index
    @quotes = Quote.all
    @companies = Company.all
  end

  def show
    @quote = Quote.find[params[:id]]
  end

end
