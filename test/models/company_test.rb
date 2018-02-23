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

require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
