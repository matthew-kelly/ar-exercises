class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :hourly_rate, :store, presence: true
  validates :hourly_rate, numericality: { only_integer: true, less_than: 200, greater_than: 40 }
end
