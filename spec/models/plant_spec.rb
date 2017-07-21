require 'rails_helper'

describe Plant do
  it { should validate_presence_of :name }
  it { should validate_presence_of :scientific_name }
  it { should validate_presence_of :general }
  it { should validate_presence_of :leaves }
  it { should validate_presence_of :cones }
  it { should validate_presence_of :ecology }
  it { should validate_presence_of :plant_type }
end
