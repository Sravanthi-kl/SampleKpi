class Renametoday < ActiveRecord::Migration
  def up
    rename_column :details, :today, :day
  end

  def down
  end
end
