class AddSlugToStatistics < ActiveRecord::Migration[5.1]
  def change
    add_column :statistics, :slug, :string
  end
end
