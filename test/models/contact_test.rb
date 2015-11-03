# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  surname    :string(255)
#  email      :string(255)
#  phone      :string(255)
#  message    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
