class Bond < ActiveRecord::Base
  
  belongs_to :company

	validates_presence_of :coupon,
         :message => "Bond coupon is required"
  validates_presence_of :cusip,
         :message => "Bond CUSIP is required"
  validates_presence_of :maturity,
         :message => "Bond maturity is required"
  validates_presence_of :prospectus,
         :message => "Bond prospectus is required"
  validates_presence_of :rating,
         :message => "Bond rating is required"
  validates_presence_of :company_id,
         :message => "Comapny is required"

  validates_uniqueness_of :cusip,
  				:message => "CUSIP already exists" , :case_sensitive => false

  attr_accessible :company_id, :coupon, :cusip, :maturity, :prospectus, :rating

  def self.search(search)
    if search
      find(:all, :conditions => ["cusip ILIKE ?", '%' + "#{search}" +'%'])
    else
      find(:all)
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Bond.create! row.to_hash
    end
  end
end
