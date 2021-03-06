class JbBranch < ActiveRecord::Base
  attr_accessible :branchaddress, :branchname, :branchtype, :city, :contactnumbers, :maplink, :shortname, :workinghours
  has_many :businesskpi
  has_many :kpi, through: :businesskpi 
  has_many :details 
  validates :branchaddress,:branchname,:contactnumbers,:branchtype,:city,:workinghours,:shortname,:maplink,:presence => true
  validates :branchname,:shortname, :length => { :maximum =>10 }
  validates :branchname,:uniqueness => true
  validates :contactnumbers,format: { with: /\d{3}-\d{3}-\d{4}/, message: "Valid Format :xxx-xxx-xxx" }
end
