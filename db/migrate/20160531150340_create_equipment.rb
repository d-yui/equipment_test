class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :model_number
      t.time :start_date

      t.timestamps null: false
    end
  end
end
