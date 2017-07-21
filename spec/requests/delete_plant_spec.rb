require 'rails_helper'

describe "destroy plant route", type: :request do

  before do
    @plant1 = FactoryGirl.create(:plant)
    @plant2 = FactoryGirl.create(:plant)

    delete "/plants/#{@plant1.id}"
  end

  it 'should return status 200' do
    expect(response.status).to eq 200
  end

  it 'should delete the plant' do
    expect(Plant.all[0]).to eq @plant2
  end

end
