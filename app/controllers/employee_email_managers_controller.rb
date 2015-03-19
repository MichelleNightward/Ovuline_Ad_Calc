class EmployeeEmailManagersController < ApplicationController


  def index
    @quotes = Quote.all
    @quote = Quote.new
  end

  def create
  end

  def delete
  end

end