class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_one_apparel_type

  def must_carry_one_apparel_type 
    if mens_apparel.blank? && womens_apparel.blank?
      errors.add(:store, "Store must carry at least one of the men's or women's apparel")
    end
  end
end