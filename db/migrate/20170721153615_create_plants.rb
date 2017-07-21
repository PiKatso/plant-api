class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :scientific_name
      t.string :type
      t.string :general
      t.string :leaves
      t.string :cones
      t.string :ecology
    end
  end
end
