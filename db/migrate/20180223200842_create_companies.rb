class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :city
      t.string :state_code
      t.string :zip_code
      t.string :country_code
      t.string :website
      t.string :email
      t.float :latitude
      t.float :longitude
      t.string :formatted_address

      t.timestamps
    end
  end
end
