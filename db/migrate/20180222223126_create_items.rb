class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :number
      t.datetime :release_date
      t.string :name
      t.text :description
      t.string :style
      t.decimal :abv
      t.integer :case_vol
      t.integer :can_limit
      t.decimal :price
      t.text :additional
      t.datetime :canning_date
      t.string :canning_phrase
      t.text :label_inspiration
      t.string :instagram_url

      t.timestamps
    end
  end
end
