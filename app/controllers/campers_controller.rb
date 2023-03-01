class CampersController < ApplicationController
    def index
    campers = Camper.all
    render json: campers, status: :ok
    end

    def show
    camper = Camper.find(params[:id])
    render json: camper, status: :ok, serializer: :CamperActivitiesSerializer
    end
end
