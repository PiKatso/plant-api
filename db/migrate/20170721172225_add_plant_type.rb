class AddPlantType < ActiveRecord::Migration[5.1]
  def change
    change_table :plants do |t|
      t.string :plant_type
    end
  end
end
