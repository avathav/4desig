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

class Slider < ActiveRecord::Base
    translates :title, :lead, :link
    has_attached_file :image, styles: { big: "1920x839", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

    active_admin_translates :title, :lead, :link

  scope :visible, -> {where(:is_displayed => true)}
end
