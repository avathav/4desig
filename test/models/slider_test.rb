# == Schema Information
#
# Table name: sliders
#
#  id                 :integer          not null, primary key
#  is_displayed       :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'test_helper'

class SliderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
