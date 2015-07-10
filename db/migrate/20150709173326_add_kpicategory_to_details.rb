class AddKpicategoryToDetails < ActiveRecord::Migration
  def change
  	add_column :details, :kpicategory, :string
  end
end
