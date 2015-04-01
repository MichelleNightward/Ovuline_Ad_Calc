class AddAdTypeColumnsToQutoes < ActiveRecord::Migration
  def change
    add_column :quotes, :ovuline_exclusive, :boolean
    add_column :quotes, :native_ad, :boolean
    add_column :quotes, :native_article, :boolean
    add_column :quotes, :social_ad, :boolean
  end
end
