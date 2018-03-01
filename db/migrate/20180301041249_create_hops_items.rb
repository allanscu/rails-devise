class CreateHopsItems < ActiveRecord::Migration[5.1]
  def change
    create_table :hops_items do |t|
      t.integer :hop_id
      t.integer :item_id
    end
  end
end
