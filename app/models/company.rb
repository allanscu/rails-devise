# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  name              :string
#  address1          :string
#  address2          :string
#  address3          :string
#  city              :string
#  state_code        :string
#  zip_code          :string
#  country_code      :string
#  website           :string
#  email             :string
#  latitude          :float
#  longitude         :float
#  formatted_address :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Company < ApplicationRecord
	before_save :concatenate_formatted_address
	geocoded_by :concatenate_formatted_address
	after_validation :geocode, if: ->(obj){ obj.concatenate_formatted_address.present? }

	extend FriendlyId
	friendly_id :name, use: :slugged

	has_many :items

	def concatenate_formatted_address
		self.formatted_address = "#{address1} #{address2} #{address3} #{city} #{state_code} #{zip_code} #{country_code}"
	end

	def should_generate_new_friendly_id?
   		name_changed?
	end

end
