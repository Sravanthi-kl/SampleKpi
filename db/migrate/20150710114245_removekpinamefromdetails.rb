class Removekpinamefromdetails < ActiveRecord::Migration
  def up
  	remove_column :details, :kpiname
  end

  def down
  	add_column :details, :kpiname, :string
  end
end
