class Store < ActiveRecord::Base
  has_many :employees
  validate :validate_store_name_length, :validate_annual_revenue, :has_mens_or_womens_apparel, on: :create

  def validate_store_name_length
    if name.length < 3
      puts "Error: Name must be a minimum of 3 characters"
      errors.add(:name, "Store name must be a minimum 3 characters")
    end
  end

  def validate_annual_revenue
    if annual_revenue.blank? || annual_revenue.class != Integer || annual_revenue < 0
      puts "Error: Annual revenue must be an integer of 0 or more and cannot be blank"
      errors.add(:annual_revenue, "Annual revenue must be an integer of 0 or more and cannot be blank")
    end
  end

  def has_mens_or_womens_apparel
    if mens_apparel == false && womens_apparel == false
      puts "Error: Store must carry at least one of the men's or women's apparel"
      errors.add(:womens_apparel, "Stores must carry at least one of the men's or women's apparel")
      errors.add(:mens_apparel, "Stores must carry at least one of the men's or women's apparel")
    end
  end

end
