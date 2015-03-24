class EmployeeEmailManagersController < ApplicationController


  def index
    @emails = EmployeeEmail.all
    @email = EmployeeEmail.new
  end

  def create
    @email = EmployeeEmail.new(email_params)

    if @email.save
      flash[:notice] = 'Your email information has been added'
      redirect_to employee_email_manager_path
    else
      render action: 'new'
     end
  end

  def destroy
    @email = EmployeeEmail.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html { redirect_to employee_email_manager_path, notice: 'Line-item was successfully removed.' }
    end
  end

  private

    def email_params
      params[:employee_email].permit(:name, :email)
    end
end
