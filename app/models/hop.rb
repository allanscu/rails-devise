# == Schema Information
#
# Table name: hops
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  slug        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Hop < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged

	has_and_belongs_to_many :items

	def should_generate_new_friendly_id?
   		name_changed?
	end
end
