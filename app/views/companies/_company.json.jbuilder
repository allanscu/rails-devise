json.extract! company, :id, :name, :address1, :address2, :address3, :city, :state_code, :zip_code, :country_code, :website, :email, :latitude, :longitude, :created_at, :updated_at
json.url company_url(company, format: :json)
