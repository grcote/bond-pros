class Company < ActiveRecord::Base
  
	belongs_to :exchange
	has_many :bonds

	validates_presence_of :company_name,
         :message => "Company Name is required"

  validates_presence_of :ticker,
         :message => "Ticker Symbol is required"

  validates_presence_of :url,
         :message => "Website is required"

	validates_presence_of :exchange_id,
         :message => "Exchange is required"

	validates_uniqueness_of :company_name,
  				:message => "Company Name already exists" , :case_sensitive => false

  attr_accessible :exchange_id, :company_name, :ticker, :url

end
