class AddSlugToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :slug, :string
  end
end
