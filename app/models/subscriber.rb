class Subscriber < ActiveRecord::Base
  
  #validates_uniqueness_of :email,
  			 #:message => "Email address already exists" , :case_sensitive => false

  validates_presence_of :email,
         :message => "Email address is required"

  attr_accessible :email, :name
end
