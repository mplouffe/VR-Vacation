class Customer < ApplicationRecord

  belongs_to :province
  has_many :orders
  
  validates_presence_of   :first_name,
                          :last_name,
                          :address,
                          :city,
                          :postal_code,
                          :email
  
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :message => 'must be in form example@example.com'
  validates_format_of :postal_code, :with => /[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJKLMNPRSTVWXYZ][\s][0-9][ABCEGHJKLMNPRSTVWXYZ][0-9]/, :message => 'must be in form A0A 0A0'

end
