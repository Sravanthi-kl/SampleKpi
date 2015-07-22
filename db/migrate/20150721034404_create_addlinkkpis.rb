class CreateAddlinkkpis < ActiveRecord::Migration
  def change
    create_table :addlinkkpis do |t|
      t.integer :jbbranch_id
      t.integer :kpi_id
      t.string :jbbrnachname
      t.string :kpi_name
      t.string :kpi_frequency
      t.string :kpi_category
      t.integer :kpi_target

      t.timestamps
    end
  end
end
