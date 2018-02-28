class AddInstagramToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :instagram_embed, :string
    add_column :items, :instagram_image, :string
  end
end
