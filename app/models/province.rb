class Province < ApplicationRecord

  validates_presence_of :name, :abbrv
end
