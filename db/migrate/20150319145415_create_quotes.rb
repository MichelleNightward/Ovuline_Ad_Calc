class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string   "app_type"
      t.string   "mobile_platform"
      t.string   "ad_type"
      t.integer  "company_id"
      t.string   "budget"
      t.string   "begin_date"
      t.string   "end_date"
      t.boolean  "ovuline_exclusive"
      t.boolean  "native_ad"
      t.boolean  "email_campaign"
      t.boolean  "social_ad"
      t.boolean  "target_ttc"
      t.boolean  "target_preg"
      t.boolean  "target_sig_other"
      t.boolean  "target_1st_trim"
      t.boolean  "target_2nd_trim"
      t.boolean  "target_3rd_trim"

      t.timestamps null: false
    end
  end
end
