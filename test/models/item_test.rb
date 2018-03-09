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
#  price_four_pack                 :decimal(, )
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
