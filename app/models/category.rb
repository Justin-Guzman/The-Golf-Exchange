# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  has_many(:listings, { :class_name => "Listing", :foreign_key => "category_id", :dependent => :destroy })

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
