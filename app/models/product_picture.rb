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

class ProductPicture < ActiveRecord::Base
  belongs_to :product

  translates :title
  has_attached_file :image, styles: { big: "1280x720>", medium: "640x360>", thumb: "200x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  active_admin_translates :title

  scope :visible, -> {where(:is_display => true)}
end
