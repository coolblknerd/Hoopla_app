class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  
  validates :post, length: { minimum: 2 }
  validates :post, length: { maximum: 250 }
end
