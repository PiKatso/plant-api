class Plant < ApplicationRecord
 validates :name, :scientific_name, :plant_type, :general, :leaves, :cones, :ecology, presence: true

 # SCOPES
  scope :name_search, -> (input) { where("name like ?", "#{input}")}
  scope :sci_name_search, -> (input) { where("scientific_name like ?", "#{input}")}
  scope :type_search, -> (input) { where("plant_type like ?", "#{input}")}

  # RANDOM
  scope :random_search, -> (input) { where("id =?", input )}


  # PAGINATION
  paginates_per 10
  max_paginates_per 10
end
