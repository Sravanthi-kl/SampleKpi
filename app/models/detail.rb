class Detail < ActiveRecord::Base
  belongs_to :kpi
  attr_accessible :actual, :kpi_id, :notes, :target, :target_percentage, :today
end
