class AddCampaignColumnToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :campaign_name, :string
  end
end
