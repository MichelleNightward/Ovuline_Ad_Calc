class AddColumnsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :name, :string
    add_column :companies, :company, :string
    add_column :companies, :email, :string
    add_column :companies, :phone, :string
  end
end
