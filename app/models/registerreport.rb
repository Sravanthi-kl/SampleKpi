class Registerreport < ActiveRecord::Base
  belongs_to :kpi
  belongs_to :jbbranch

  attr_accessible :end_date, :kpiname, :start_date, :user_id  
  validates :end_date, :kpiname, :start_date, :user_id,:presence => true
end
