class CreateRegisterreports < ActiveRecord::Migration
  def change
    create_table :registerreports do |t|
      t.string :user_id
      t.string :kpiname
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
