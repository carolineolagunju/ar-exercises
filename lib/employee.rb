class Employee < ActiveRecord::Base
  belongs_to :store

  validates :hourly_rate, numericality: { greater_than: 39, only_integer: true, less_than: 201}

  validates :first_name, :last_name, :store_id, presence: true

end
