class CreateBusinesskpis < ActiveRecord::Migration
  def change
    create_table :businesskpis do |t|
      t.integer :kpi_id
      t.integer :jbbranch_id
      t.references :kpi
      t.references :jbbranch

      t.timestamps
    end
    add_index :businesskpis, :kpi_id
    add_index :businesskpis, :jbbranch_id
  end
end
