class Renamedate < ActiveRecord::Migration
  def up
  	rename_column :details, :date, :day
  end

  def down
  end
end
