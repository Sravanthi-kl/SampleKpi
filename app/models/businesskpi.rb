class Businesskpi < ActiveRecord::Base
  belongs_to :kpi
  belongs_to :jbbranch
  has_many :details
  attr_accessible :jbbranch_id, :kpi_id,:branchname,:kpiname,:kpifrequency,:kpicategory
  validates :kpi_id, :uniqueness => true
end
