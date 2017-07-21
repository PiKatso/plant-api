require 'rails_helper'

describe "get all plants route", type: :request do
  let!(:plants) { FactoryGirl.create_list(:plant, 20)}

  before { get '/v1/plants'}

  it 'returns all plants' do
     expect(jsonParse.size).to eq (10)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

  it 'returns plants by name' do
    plant = plants.first
    get "/v1/plants?name=#{plant.name}"
    output = JSON.parse(response.body).first
    expect(output.fetch("name")).to eq "#{plant.name}"
  end

  it 'returns plants by scientific name' do
    plant = plants.first
    get "/v1/plants?scientific_name=#{plant.scientific_name}"
    output = JSON.parse(response.body).first
    expect(output.fetch("scientific_name")).to eq "#{plant.scientific_name}"
  end

  it 'returns plants by plant type' do
    plant = plants.first
    get "/v1/plants?plant_type=#{plant.plant_type}"
    output = JSON.parse(response.body).first
    expect(output.fetch("plant_type")).to eq "#{plant.plant_type}"
  end

  it 'returns random plant' do
    get '/v1/plants?random'
    expect(response).to have_http_status(:success)
  end

end
