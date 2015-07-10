class CreateFranchisemasters < ActiveRecord::Migration
  def change
    create_table :franchisemasters do |t|
      t.string :franchisetype
      t.string :franchisename
      t.string :franchiseename
      t.string :owneremailid
      t.date :openingdate
      t.date :effectivefrom

      t.timestamps
    end
  end
end
