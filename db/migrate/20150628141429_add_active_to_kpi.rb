class AddActiveToKpi < ActiveRecord::Migration
  def change
    add_column :kpis, :Active, :Boolean,:default => true
  end
end
