class Plant < ApplicationRecord
 validate :name, :scientific_name, :plant_type, :general, :leaves, :cones, :ecology, presence: true

 
end
