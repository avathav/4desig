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

class StaticPage < ActiveRecord::Base
  translates :title, :lead, :content
  active_admin_translates :title, :lead, :content

  enum code: [ :about ]
  scope :visible, -> {where(:is_display => true)}

end
