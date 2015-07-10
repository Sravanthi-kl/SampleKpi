class Franchisemaster < ActiveRecord::Base
  attr_accessible :effectivefrom, :franchiseename, :franchisename, :franchisetype, :openingdate, :owneremailid,:owneraddress


  validates :franchisetype,:franchisename,:franchiseename,:owneremailid,:owneraddress,:openingdate,:effectivefrom,:presence => true
  validates :franchisetype,:franchisename,:franchiseename, :length => { :maximum =>10 }
  validates :franchisename, :uniqueness => true
  
end

