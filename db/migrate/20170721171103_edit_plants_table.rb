class EditPlantsTable < ActiveRecord::Migration[5.1]
  change_table :plants do |t|
    t.remove :type
  end
end
