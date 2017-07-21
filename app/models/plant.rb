class Plant < ApplicationRecord
 validates :name, :scientific_name, :plant_type, :general, :leaves, :cones, :ecology, presence: true


end
