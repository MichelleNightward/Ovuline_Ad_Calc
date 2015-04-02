class FixColumnName < ActiveRecord::Migration
  def change
      rename_column :quotes, :companyID, :company_id
  end
end
