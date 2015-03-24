class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :adtype
      t.string :views
      t.string :demographics
      t.string :subtotal

      t.timestamps null: false
    end
  end
end
