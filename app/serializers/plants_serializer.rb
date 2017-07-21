class PlantsSerializer < ActiveModel::Serializer
  attributes :name, :scientific_name, :general, :leaves, :cones, :ecology, :plant_type
  
end
