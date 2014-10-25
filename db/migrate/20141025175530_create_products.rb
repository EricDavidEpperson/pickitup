class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :image
      t.string :price_in_cents
      t.string :inventory_count

      t.timestamps
    end
  end
end
