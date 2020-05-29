class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.date :schedule
      t.time :delivery_time
      t.string :facebook_url
      t.string :instagram_url
      t.string :web_url
      t.text :payment_options, array: true, default: []
      t.text :order_options, array: true, default: []
      t.boolean :conditions_terms
      t.text :description
      t.boolean :active, default: true
      t.boolean :is_destroyed, default: false
      t.references :user, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
