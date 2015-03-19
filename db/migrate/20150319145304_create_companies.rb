class CreateCompanies < ActiveRecord::Migration
  has_many :quotes, dependent: :destroy
  def change
    create_table :companies do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end