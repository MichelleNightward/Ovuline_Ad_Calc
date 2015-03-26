class EmployeeEmailManagersController < ApplicationController


  def index
    @emails = EmployeeEmail.all
    @email = EmployeeEmail.new
  end

  # def show
  #   @email = EmployeeEmail.find(params[:id])
  # end

  def create
    @email = EmployeeEmail.new(email_params)

    if @email.save
      flash[:notice] = 'Your email information has been added'
      redirect_to employee_email_managers_path
    else
      render action: 'new'
     end
  end

  def destroy
    @email = EmployeeEmail.find(params[:id])
    if @email.present?
      @email.destroy
    end
    redirect_to employee_email_managers_path
  end

  private

    def email_params
      params[:employee_email].permit(:name, :email)
    end
end
