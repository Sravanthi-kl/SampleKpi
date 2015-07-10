class AddKpinameToDetails < ActiveRecord::Migration
  def change
  	add_column :details, :kpiname, :string
  end
end
