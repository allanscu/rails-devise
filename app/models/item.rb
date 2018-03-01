# == Schema Information
#
# Table name: items
#
#  id                :integer          not null, primary key
#  number            :integer
#  release_date      :datetime
#  name              :string
#  description       :text
#  style             :string
#  abv               :decimal(, )
#  case_vol          :integer
#  can_limit         :integer
#  price             :decimal(, )
#  additional        :text
#  canning_date      :datetime
#  canning_phrase    :string
#  label_inspiration :text
#  instagram_url     :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  slug              :string
#  company_id        :integer
#  active            :boolean          default(FALSE)
#  active_at         :datetime
#  instagram_embed   :string
#  instagram_image   :string
#

class Item < ApplicationRecord
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
  
end
