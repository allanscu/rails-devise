class CreateStatistics < ActiveRecord::Migration[5.1]
  def change
    create_table :statistics do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
