class Passenger < ApplicationRecord
  has_many :trips
  
  validates :name, presence: true
  validates :phone_num, presence: true
  
  ### NOPE, GONNA KEEP A RUNNING TOTAL COLUMN CALLED total_spent INSTEAD!
  # def total_spent_model
  #   trips = self.trips
  #   total_spent = trips.sum(:cost)
  #   return total_spent
  # end
  
  def standardize_phone 
    ### FUTURE ENHANCEMENT IDEA , for standardizing phone_num display string ###
  end
end
