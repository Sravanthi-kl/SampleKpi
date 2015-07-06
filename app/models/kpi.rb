class Kpi < ActiveRecord::Base
  attr_accessible :kpicategory, :kpidirection, :kpiformat, :kpifrequency, :kpiname, :kpitarget

  validates :kpicategory,:kpidirection,:kpiformat,:kpifrequency,:kpiname,:kpitarget,:presence => true
  has_many :details







end
