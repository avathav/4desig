# == Schema Information
#
# Table name: product_categories
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductCategory < ActiveRecord::Base

  has_many :products
  translates :title, :description
  active_admin_translates :title, :description

  def to_s
    title
  end

  def category_anchor
    self.to_s.remove(' ').underscore
  end

end
