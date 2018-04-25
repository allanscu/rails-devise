class AddBatchToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :batch, :integer
  end
end
