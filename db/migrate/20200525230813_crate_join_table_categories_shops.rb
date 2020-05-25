class CrateJoinTableCategoriesShops < ActiveRecord::Migration[6.0]
  def change
    create_join_table :categories, :shops do |t|
      t.index :category_id
      t.index :shop_id
    end
  end
end
