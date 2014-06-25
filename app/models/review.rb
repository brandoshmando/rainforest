class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :title, presence: true, length: { maximum: 20 }
  validates :comment, presence: true, length: { maximum: 500 }
end
