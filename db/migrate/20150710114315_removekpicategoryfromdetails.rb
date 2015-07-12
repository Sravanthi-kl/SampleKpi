class Removekpicategoryfromdetails < ActiveRecord::Migration
  def up
  	remove_column :details, :kpicategory
  end

  def down
  	add_column :details, :kpicategory, :string
  end
end
