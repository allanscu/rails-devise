class AddActiveToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :active, :boolean, {:default=>false}
    add_column :items, :active_at, :datetime
  end
end