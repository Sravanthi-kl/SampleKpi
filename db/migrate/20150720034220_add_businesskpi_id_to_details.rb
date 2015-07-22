class AddBusinesskpiIdToDetails < ActiveRecord::Migration
  def change
    add_column :details, :businesskpi_id, :integer
  end
end
