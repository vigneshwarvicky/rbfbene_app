class Customer < ActiveRecord::Base
  
  attr_accessible :address, :city, :dob, :first_name, :last_name, :pan, :pincode, :sex, :state, :status

  validates :first_name, presence: true, format: { with: %r{^[A-Z][a-zA-Z\s]*} }

  validates :last_name, presence: true, format: { with: %r{^[A-Z][a-zA-Z\s]*} } 

  validates_numericality_of :pincode, presence: true, length: { maximum: 6 }

  validates :pan, presence:true, format: { with: %r{^[A-Z]{5}\d{4}[A-Z]{1}} }, length: {maximum: 10}

  validates_inclusion_of :dob,
      :in => Date.civil(1900, 1, 1)..Date.today,
      :message => "Must be between 1900 and now"

  validates :address, presence: true

  validates :city, presence: true

  validates :state, presence: true

  validates :sex, presence: true

end
