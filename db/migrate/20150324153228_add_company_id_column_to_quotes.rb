class AddCompanyIdColumnToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :companyID, :integer
  end
end
