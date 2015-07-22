class Detail < ActiveRecord::Base
  belongs_to :kpi 
  belongs_to :businesskpi
  belongs_to :jbbranch
  attr_accessible :actual, :kpi_id, :notes, :target, :target_percentage, :day,:businesskpi_id,:jbbranch_id,:branchname
  
  validates :actual, :kpi_id, :notes, :target, :target_percentage, :day,:presence => true

end
