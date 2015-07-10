class AddActiveToKpi < ActiveRecord::Migration
  def change
    add_column :kpis, :active, :boolean,:default => true
  end
end
