# == Schema Information
#
# Table name: teams
#
#  id                  :integer          not null, primary key
#  firstname           :string(255)
#  surname             :string(255)
#  fb_link             :string(255)
#  twitter_link        :string(255)
#  google_link         :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
