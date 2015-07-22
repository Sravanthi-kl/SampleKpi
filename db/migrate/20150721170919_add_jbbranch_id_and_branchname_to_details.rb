class AddJbbranchIdAndBranchnameToDetails < ActiveRecord::Migration
  def change
    add_column :details, :jbbranch_id, :integer
    add_column :details, :branchname, :string
  end
end
