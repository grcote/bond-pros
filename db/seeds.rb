# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bond.create({
    :company_id       => 1,
    :coupon        	  => "7.5%",
    :cusip    		  => "JamesBond",
    :maturity     	  => "30 yr",
    :prospectus       => "www.hotmail.com", 
    :rating           => "AAA"
})

Bond.create({
    :company_id       => 2,
    :coupon        		=> "8.5%",
    :cusip    				=> "BillyBond",
    :maturity     		=> "15 yr",
    :prospectus       => "www.yahoo.com", 
    :rating           => "B"
})

Bond.create({
    :company_id       => 2,
    :coupon        		=> "3.5%",
    :cusip    				=> "BonBond",
    :maturity     		=> "22 yr",
    :prospectus       => "www.bozo.com", 
    :rating           => "C"
})

Bond.create({
    :company_id       => 3,
    :coupon        		=> "10.5%",
    :cusip    				=> "BadBond",
    :maturity     		=> "5 yr",
    :prospectus       => "www.asdfjkl.com", 
    :rating           => "D"
})

Bond.create({
    :company_id       => 4,
    :coupon        		=> "2.5%",
    :cusip    				=> "SafeBond",
    :maturity     		=> "25 yr",
    :prospectus       => "www.safety.com", 
    :rating           => "AAAA"
})

Bond.create({
    :company_id       => 4,
    :coupon        		=> "7.5%",
    :cusip    				=> "BeeBond",
    :maturity     		=> "10 yr",
    :prospectus       => "www.aeiou.com", 
    :rating           => "A"
})

Company.create({
		:company_name							=> "Acme",
		:ticker						=> "ACM",
		:url							=> "www.acme.com",
		:exchange_id			=> 1
})

Company.create({
		:company_name							=> "Uma",
		:ticker						=> "UM",
		:url							=> "www.uma.com",
		:exchange_id			=> 2
})

Company.create({
		:company_name							=> "Cloud Eater",
		:ticker						=> "CLDE",
		:url							=> "www.cloudeater.com",
		:exchange_id			=> 1
})

Company.create({
		:company_name							=> "MMM Good",
		:ticker						=> "MMMG",
		:url							=> "www.mmmgood.com",
		:exchange_id			=> 2
})

Exchange.create({
		:exchange_name 				=> "NYSE"
})

Exchange.create({
		:exchange_name 				=> "NASDAQ"
})

User.create({
        :username              => "grcote",
        :email                 => "grcote@gmail.com",
        :password              => "marcey",
        :password_confirmation => "marcey",
        :admin                 => FALSE
})

User.create({
        :username              => "ian",
        :email                 => "ianmcveigh@yahoo.com",
        :password              => "valerie",
        :password_confirmation => "valerie",
        :admin                 => FALSE
})

User.create({
        :username              => "admin",
        :email                 => "admin@bondpros.com",
        :password              => "boulder",
        :password_confirmation => "boulder",
        :admin                 => TRUE
})





