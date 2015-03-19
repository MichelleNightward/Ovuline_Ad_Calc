class EmployeesController < ApplicationController

  #this is coppied directly from quotes_controller
  def index
    @quotes = Quote.all
    @quote = Quote.new
  end
end