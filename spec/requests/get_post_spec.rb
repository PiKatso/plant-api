require 'rails_helper'

describe "post a plant route", type: :request do

  before do
    @plant = FactoryGirl.build(:plant)
      post "/plants", params: {
        name: @plant.name,
        scientific_name: @plant.scientific_name,
        plant_type: @plant.plant_type,
        general: @plant.general,
        leaves: @plant.leaves,
        cones: @plant.cones,
        ecology: @plant.ecology
       }
  end

  it 'returns the plant name' do
    expect(jsonParse['name']).to eq(@plant.name)
  end


  it 'returns the plant scientific_name' do
    expect(jsonParse['scientific_name']).to eq(@plant.scientific_name)
  end

  it 'returns the plant plant_type' do
    expect(jsonParse['plant_type']).to eq(@plant.plant_type)
  end

  it 'returns the plant general' do
    expect(jsonParse['general']).to eq(@plant.general)
  end

  it 'returns the plant leaves' do
    expect(jsonParse['leaves']).to eq(@plant.leaves)
  end

  it 'returns the plant cones' do
    expect(jsonParse['cones']).to eq(@plant.cones)
  end

  it 'returns the plant ecology' do
    expect(jsonParse['ecology']).to eq(@plant.ecology)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

end
