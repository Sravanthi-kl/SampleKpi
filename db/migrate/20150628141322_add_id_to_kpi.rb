class AddIdToKpi < ActiveRecord::Migration
  def change
    add_column :kpis, :KpiID, :Integer
  end
end
