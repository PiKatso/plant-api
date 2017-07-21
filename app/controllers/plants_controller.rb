class PlantsController < ApplicationController
  # before_action

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
    json_response(@plant, :created)
  end

  def update
    @plant = Plant.find(params[:id])
    if @plant.update!(plant_params)
      render status: 200, json: {
       message: "#{@plant.name} has been updated successfully."
       }
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    if @plant.destroy!
      render status: 200, json: { message: "Your plant has successfully been deleted." }
    else
      render status: 503, json: {
        message: "service not available"
      }
    end
  end

  private

  def plant_params
    params.permit(:name, :scientific_name, :plant_type, :general, :leaves, :cones, :ecology)
  end
end
