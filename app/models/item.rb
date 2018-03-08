# == Schema Information
#
# Table name: items
#
#  id                              :integer          not null, primary key
#  number                          :integer
#  release_date                    :datetime
#  name                            :string
#  description                     :text
#  style                           :string
#  abv                             :decimal(, )
#  case_vol                        :integer
#  can_limit                       :integer
#  price                           :decimal(, )
#  additional                      :text
#  canning_date                    :datetime
#  canning_phrase                  :string
#  label_inspiration               :text
#  instagram_url                   :string
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  slug                            :string
#  company_id                      :integer
#  active                          :boolean          default(FALSE)
#  active_at                       :datetime
#  instagram_embed                 :string
#  instagram_image                 :string
#  release_date_difference_seconds :integer
#

class Item < ApplicationRecord
	before_save :update_time_canning_date_to_release_date
	before_save :convert_price_four_pack_to_one_can_price

	extend FriendlyId
	friendly_id :name, use: :slugged

	belongs_to :company
	has_and_belongs_to_many :hops

	def should_generate_new_friendly_id?
   		name_changed?
	end

	def active
		update(active: true, active_at: Time.now)
	end

	def inactive
		update(active: false, active_at: nil)
	end

	def remove_trailing_comma(str)
    	str.nil? ? nil : str.chomp(",")
	end

	# This will automatically adjust the release_date which is local to the compnay to UTC and update the canning_date to be the same
	def update_time_canning_date_to_release_date
		self.canning_date = release_date
	end

	# This will allow the admin to enter the price of the 4 pack to 1 can
	def convert_price_four_pack_to_one_can_price
		self.price = price_four_pack/4
	end
end
