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

class Product < ActiveRecord::Base
  has_many :product_pictures, :dependent => :destroy
  belongs_to :product_category

  accepts_nested_attributes_for :product_pictures, allow_destroy: true

  translates :title, :lead, :description, :features
  active_admin_translates :title, :lead, :description, :features

  scope :visible, -> {where(:is_display => true)}

  def default_picture_url size
    picture = product_pictures.visible.first
    picture.image.url(size) if picture
  end

  def category_anchor
    product_category.category_anchor if product_category
  end
end
