class User < ActiveRecord::Base
  has_many :reviews
  has_many :products

  has_secure_password
  validates :first_name, presence: true, length: { maximum: 15 }
  validates :last_name, presence: true, length: { maximum: 15 }
  validates :email, presence: true, length: { maximum: 20 }
end
