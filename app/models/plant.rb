class Plant < ApplicationRecord

    def index
        plants = Plant.all
        render json: plants
    end

    def show
        plants = Plant.find_by(id: params[:id])
        render json: plants
    end

    def create
        plant = Plant.new(params_plant)
        render json: plant

    end

    private

    def params_plant
        params.permit(:name, :image, :price)
    end

end
