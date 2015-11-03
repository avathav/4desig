# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  is_display          :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  product_category_id :integer
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
