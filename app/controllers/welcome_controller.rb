# app/controllers/welcome_controller.rb

class WelcomeController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index]
  
    def index
      @buildings = Building.all
      @apartments = Apartment.all
    end
  end
  