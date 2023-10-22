class Employee < ActiveRecord::Base
  belongs_to :store
  validate :check_first_name, :check_last_name, :check_hourly_rate, :have_a_store?, on: :create

  def check_first_name
    if first_name.blank?
      puts "Error: First name cannot be empty"
      errors.add(:first_name, "First name cannot be empty")
    end
  end

  def check_last_name
    if last_name.blank?
      puts "Error: Last name cannot be empty"
      errors.add(:last_name, "Last name cannot be empty")
    end
  end

  def check_hourly_rate
    if hourly_rate.class != Integer || hourly_rate < 40 || hourly_rate > 200
      puts "Error: Hourly rate must be an integer, must be greater than 39 but not greater than 200"
      errors.add(:hourly_rate, "Hourly rate must be an integer, must be greater than 39 but not greater than 200")
    end
  end

  def have_a_store?
    if store_id.blank?
      puts "Error: Employee must be assigned to a store"
      errors.add(:store_id, "Employee must be assigned to a store")
    end
  end

end
