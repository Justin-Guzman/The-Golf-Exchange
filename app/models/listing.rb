# == Schema Information
#
# Table name: listings
#
#  id          :integer          not null, primary key
#  description :string
#  image       :string
#  price       :string
#  status      :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  buyer_id    :integer
#  category_id :integer
#  seller_id   :integer
#
class Listing < ApplicationRecord
 # belongs_to(:seller, { :required => true, :class_name => "User", :foreign_key => "seller_id" })

 # belongs_to(:buyer, { :required => true, :class_name => "User", :foreign_key => "buyer_id" })

  has_many(:messages, { :class_name => "Message", :foreign_key => "listing_id", :dependent => :destroy })

  #belongs_to(:category, { :required => true, :class_name => "Category", :foreign_key => "category_id" })
end