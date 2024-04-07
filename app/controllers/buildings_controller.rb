# app/controllers/buildings_controller.rb

class BuildingsController < ApplicationController
    before_action :set_building, only: [:show]
  
    def index
      @buildings = Building.all
    end
  
    def show
      @apartments = @building.apartments
    end
  
    def new
      @building = Building.new
    end
  
    def create
      @building = Building.new(building_params)
      if @building.save
        redirect_to buildings_path, notice: 'Edificio creado exitosamente.'
      else
        render :new
      end
    end
  
    private
  
    def set_building
      @building = Building.find(params[:id])
    end
  
    def building_params
      params.require(:building).permit(:name, :address, :city)
    end
  end
  