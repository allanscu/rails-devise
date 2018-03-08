class AddReleaseDateDifferenceSecondsToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :release_date_difference_seconds, :integer
  end
end
