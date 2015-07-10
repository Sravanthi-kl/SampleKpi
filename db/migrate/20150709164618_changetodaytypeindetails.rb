class Changetodaytypeindetails < ActiveRecord::Migration
  def up
  	 change_column :details, :today, :string
  end

  def down
  	 change_column :details, :today, :date
  end
end
