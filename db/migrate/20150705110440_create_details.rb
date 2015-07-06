class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.date :today
      t.integer :actual
      t.integer :target
      t.decimal :target_percentage
      t.text :notes
      t.integer :kpi_id
      t.references :kpi

      t.timestamps
    end
    add_index :details, :kpi_id
  end
end
