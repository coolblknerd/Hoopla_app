class Comment < ActiveRecord::Base
  belongs_to :post
  
  validates :comment, :presence
  validates :comment, length: { minimum: 2 }
  validates :comment, length: { maximum: 200 }
end
