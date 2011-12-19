class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :name
      t.integer :amount
      t.string :email
      t.string :comment
      t.string :pay_type
      t.references :campaign

      t.timestamps
    end
    add_index :donors, :campaign_id
  end
end
