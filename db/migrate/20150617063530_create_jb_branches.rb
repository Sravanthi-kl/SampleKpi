class CreateJbBranches < ActiveRecord::Migration
  def change
    create_table :jb_branches do |t|
      t.string :branchname
      t.string :branchtype
      t.string :shortname
      t.string :city
      t.string :branchaddress
      t.string :contactnumbers
      t.string :workinghours
      t.string :maplink

      t.timestamps
    end
  end
end
