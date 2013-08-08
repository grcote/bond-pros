class Exchange < ActiveRecord::Base
  
  has_and_belongs_to_many :companies

  validates_presence_of :exchange_name

  attr_accessible :exchange_name
  
end
