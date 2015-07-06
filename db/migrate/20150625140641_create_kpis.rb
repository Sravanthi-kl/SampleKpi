class CreateKpis < ActiveRecord::Migration
  def change
    create_table :kpis do |t|
      t.string :kpiname
      t.string :kpifrequency
      t.string :kpiformat
      t.string :kpidirection
      t.integer :kpitarget
      t.string :kpicategory

      t.timestamps
    end
  end
end
