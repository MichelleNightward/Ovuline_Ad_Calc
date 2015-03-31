class AddColumnsToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :location, :string
    add_column :quotes, :ttc, :string
    add_column :quotes, :age, :string
    add_column :quotes, :weeks_pregnant, :string
    add_column :quotes, :days_since_signup, :string
    add_column :quotes, :fertility_condition, :string
    add_column :quotes, :cycle_stage, :string
    add_column :quotes, :house_hold_income, :string
    add_column :quotes, :monthly_acivity, :string
  end
end
