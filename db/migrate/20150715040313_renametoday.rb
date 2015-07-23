class Renametoday < ActiveRecord::Migration
  def up
    rename_column :details, :today,:date
  end

  def down
  end
end
