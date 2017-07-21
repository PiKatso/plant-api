class PlantsController < ApplicationController

  def index
    @plants = Plant.all
    json_response(@plants)
  end

  def show
    @plant = Plant.find(params[:id])
    json_response(@plant)
  end

  def create
    @plant = Plant.create(plant_params)
    json_response(@plant)
  end

  def update
    @plant = Plant.find(params[:id])
    @plant.update(plant_params)
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end

  def plant_params
    params.permit(:name, :scientific_name, :plant_type, :general, :leaves, :cones, :ecology)
  end
end
