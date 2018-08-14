class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :hourly_rate, :store, presence: true
  validates :hourly_rate, numericality: { only_integer: true, less_than: 200, greater_than: 40 }

  before_create :generate_random_password
  # after_create :generate_random_password
  # before_save :generate_random_password
  
  private
    def generate_random_password
      self.password = (0...8).map { (65 + rand(26)).chr }.join
    end
end
