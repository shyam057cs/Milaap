class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :money_to_raise
      t.date :expiry_date

      t.timestamps
    end
  end
end
