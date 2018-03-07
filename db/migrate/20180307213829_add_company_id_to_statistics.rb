class AddCompanyIdToStatistics < ActiveRecord::Migration[5.1]
  def change
    add_column :statistics, :company_id, :integer
  end
end
