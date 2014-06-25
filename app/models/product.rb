class Product < ActiveRecord::Base
  has_many :reviews
  belongs_to :users
  validates :name, presence: true, length: { maximum: 20 }
  validates :description, presence: true, length: { maximum: 20 }
  validates :price_in_cents, numericality: {:only_integer => true}


  def formatted_price
    price_in_dollars = price_in_cents.to_f/100
    sprintf(".%2", price_in_dollars)
  end
end
