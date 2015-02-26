class Product < ActiveRecord::Base

  validates :description, :name, presence: true
  validates :price_in_cents, numericality: {only_integer: true}

  has_many :reviews
  has_many :users, through: :review

  paginates_per 5

  #max_paginates_per 100

  def formatted_price
    price_in_dollars = price_in_cents.to_f / 100
    sprintf("%.2f", price_in_dollars)
  end
end
