FactoryGirl.define do

  factory :plant do
    name (Faker::Ancient.god)
    scientific_name (Faker::Ancient.hero)
    plant_type (Faker::Ancient.titan)
    general (Faker::Hobbit.character)
    leaves (Faker::Hobbit.location)
    cones (Faker::Ancient.primordial)
    ecology (Faker::Hobbit.thorins_company)
  end
  
end
