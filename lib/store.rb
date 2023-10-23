class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }

  validates :annual_revenue, numericality: { greater_than: 0, only_integer: true }

  validate :has_mens_or_womens_apparel, on: :create
  
  def has_mens_or_womens_apparel

    if !mens_apparel && !womens_apparel
      errors.add(:womens_apparel, "Stores must carry at least one of the men's or women's apparel")

      errors.add(:mens_apparel, "Stores must carry at least one of the men's or women's apparel")
    end
    
  end

end
