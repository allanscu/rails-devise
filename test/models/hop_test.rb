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

require 'test_helper'

class HopTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
