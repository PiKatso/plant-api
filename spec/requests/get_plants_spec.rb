require 'rails_helper'

describe "get all plants route", type: :request do
  let!(:plants) { FactoryGirl.create_list(:plant, 20)}

  before { get '/plants'}

  it 'returns all plants' do
     expect(jsonParse.size).to eq (20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
