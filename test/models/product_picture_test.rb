# == Schema Information
#
# Table name: product_pictures
#
#  id                 :integer          not null, primary key
#  is_display         :boolean
#  product_id         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'test_helper'

class ProductPictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
