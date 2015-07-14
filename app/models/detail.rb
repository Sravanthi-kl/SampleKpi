class Detail < ActiveRecord::Base
  belongs_to :kpi 
  attr_accessible :actual, :kpi_id, :notes, :target, :target_percentage, :today

   validates :actual, :kpi_id, :notes, :target, :target_percentage, :today,:presence => true
   



end
