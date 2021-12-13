class CheesesController < ApplicationController
    def index
        cheeses = Cheese.all
        render json: cheeses
    end

    def order
        cheeses = Cheese.order(price: :desc)
        render json: cheeses
    end
end
