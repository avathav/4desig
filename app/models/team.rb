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

class Team < ActiveRecord::Base

  translates :position, :description
  active_admin_translates :position, :description

  has_attached_file :avatar, styles: {big: "600x600>", medium: "270x270>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/


  scope :visible, -> {where(:is_displayed => true)}

  def fullname
    "#{firstname} #{surname}"
  end
end
