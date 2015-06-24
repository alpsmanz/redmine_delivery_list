class CreateDeliveryPartners < ActiveRecord::Migration
  def change
    create_table :delivery_partners do |t|
      t.string :identifier
      t.string :disp_name
    end
  end
end
