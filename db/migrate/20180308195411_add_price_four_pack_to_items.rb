class AddPriceFourPackToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :price_four_pack, :decimal
  end
end
