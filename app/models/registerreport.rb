class Registerreport < ActiveRecord::Base
  attr_accessible :end_date, :kpiname, :start_date, :user_id
  
  validates :end_date, :kpiname, :start_date, :user_id,:presence => true
end
