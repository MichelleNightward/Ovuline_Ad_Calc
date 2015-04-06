class CreateEmployeeEmails < ActiveRecord::Migration
  def change
    create_table :employee_emails do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
