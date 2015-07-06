class RemoveKpiIDfromkpis < ActiveRecord::Migration
  def up
  		remove_column :kpis, :KpiID
  end

  def down
  		 add_column :kpis, :KpiID, :Integer
  end
end
