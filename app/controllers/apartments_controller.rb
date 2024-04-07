# app/controllers/apartments_controller.rb

class ApartmentsController < ApplicationController
    before_action :set_building
    before_action :set_apartment, only: [:show]
  
    def index
      @apartments = @building.apartments
    end
  
    def show
    end
  
    def new
      @apartment = @building.apartments.build
    end
  
    def create
      @apartment = @building.apartments.build(apartment_params)
      if @apartment.save
        redirect_to building_path(@building), notice: 'Departamento creado exitosamente.'
      else
        render :new
      end
    end
  
    private
  
    def set_building
      @building = Building.find(params[:building_id])
    end
  
    def set_apartment
      @apartment = @building.apartments.find(params[:id])
    end
  
    def apartment_params
      params.require(:apartment).permit(:number)
    end
  end
  