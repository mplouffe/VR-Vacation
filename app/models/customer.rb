class Customer < ApplicationRecord

  validates_presence_of   :first_name,
                          :last_name,
                          :address,
                          :city,
                          :postal_code,
                          :email
  validates_presence_of   :email_confirmation, :if => :email_changed?
  
  validates_confirmation_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_format_of :postal_code, :with => /[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJKLMNPRSTVWXYZ][\s][0-9][ABCEGHJKLMNPRSTVWXYZ][0-9]/

end
