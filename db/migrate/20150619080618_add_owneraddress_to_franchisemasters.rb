class AddOwneraddressToFranchisemasters < ActiveRecord::Migration
  def change
    add_column :franchisemasters, :owneraddress, :string
  end
end
