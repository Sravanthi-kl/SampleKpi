class Kpi < ActiveRecord::Base
  attr_accessible :kpicategory, :kpidirection, :kpiformat, :kpifrequency, :kpiname, :kpitarget
  has_many :businesskpi
  has_many :jbbranch,through: :businesskpi
  has_many :details
  
  validates :kpicategory,:kpidirection,:kpiformat,:kpifrequency,:kpiname,:kpitarget,:presence => true
  
end
