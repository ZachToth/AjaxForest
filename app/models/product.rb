class Product < ActiveRecord::Base

  validates :description, :name, presence: true
  validates :price_in_cents, numericality: {only_integer: true}

  has_many :reviews
  has_many :users, through: :review
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  paginates_per 5

  #max_paginates_per 100

  def formatted_price
    price_in_dollars = price_in_cents.to_f / 100
    sprintf("%.2f", price_in_dollars)
  end

  private
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end

end
