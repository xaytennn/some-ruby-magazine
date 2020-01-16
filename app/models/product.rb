class Product < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true

  has_many :cart_items
  before_destroy :ensure_not_referenced_by_any_line_item

  has_many :galleries
  belongs_to :category

  has_many :related_products
  has_many :related, through: :related_products

  enum hit: {hit: 1, not_hit: 0}
  enum status: { active: 1, not_active: 0}
  scope :active, -> { where(status: 1)}

  private
  def ensure_not_referenced_by_any_line_item
    if cart_items.empty?
      return true
    else
      errors.add(:base, 'существуют товарные позиции')
      return false
    end
  end
end
