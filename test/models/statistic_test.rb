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

require 'test_helper'

class StatisticTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
