require 'rails_helper'

describe "update plant request", type: :request do
  before do

    plant = FactoryGirl.create(:plant)
    put "/v1/plants/#{plant.id}/?name=Willow"
  end

  it 'should return status 200' do
    expect(response.status).to eq 200
  end

  it 'should return status 200' do
    plant = Plant.first
    expect(plant.name).to eq "Willow"
  end

end
