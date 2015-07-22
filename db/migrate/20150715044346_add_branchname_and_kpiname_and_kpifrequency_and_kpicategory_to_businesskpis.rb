class AddBranchnameAndKpinameAndKpifrequencyAndKpicategoryToBusinesskpis < ActiveRecord::Migration
  def change
    add_column :businesskpis, :branchname, :string
    add_column :businesskpis, :kpiname, :string
    add_column :businesskpis, :kpifrequency, :string
    add_column :businesskpis, :kpicategory, :string
  end
end
