class CreateHops < ActiveRecord::Migration[5.1]
  def change
    create_table :hops do |t|
      t.string :name
      t.text :description
      t.string :slug

      t.timestamps
    end
  end
end
