# == Schema Information
#
# Table name: static_pages
#
#  id         :integer          not null, primary key
#  is_display :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  code       :integer
#

require 'test_helper'

class StaticPageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
