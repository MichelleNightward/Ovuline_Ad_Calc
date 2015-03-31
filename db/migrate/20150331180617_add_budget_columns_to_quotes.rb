class AddBudgetColumnsToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :budget, :string
    add_column :quotes, :begin_date, :string
    add_column :quotes, :end_date, :string
  end
end
