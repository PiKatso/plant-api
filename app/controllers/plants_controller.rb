class PlantsController < ApplicationController
  # before_action

  def index
    if name = params[:name]
      @plants =Plant.name_search(name)
    elsif sci_name = params[:scientific_name]
      @plants = Plant.sci_name_search(sci_name)
    elsif plant_type = params[:plant_type]
      @plants = Plant.type_search(plant_type)
    else
      @plants = Plant.all
    end
    json_response(@plants.page(params[:page]))
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
