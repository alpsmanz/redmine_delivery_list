class CreateDeliveryLists < ActiveRecord::Migration
  def change
    create_table :delivery_lists do |t|
      t.string :project_name
      t.integer :partner_id
      t.string :delivery_item
      t.date :delivery_date
      t.string :registrant
      t.text :deliverables
      t.text :remarks
    end
  end
end
