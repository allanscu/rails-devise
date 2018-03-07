# == Schema Information
#
# Table name: statistics
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#  company_id  :integer
#

class Statistic < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged

	#belongs_to :company
end
