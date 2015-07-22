class Businesskpi < ActiveRecord::Base
  belongs_to :kpi
  belongs_to :jbbranch
  attr_accessible :jbbranch_id, :kpi_id,:branchname,:kpiname,:kpifrequency,:kpicategory
end
