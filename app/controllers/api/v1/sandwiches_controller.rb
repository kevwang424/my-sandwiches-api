module Api::V1

  class SandwichesController < ApplicationController

    def index
      @sandwiches = Sandwich.all
      render json: @sandwiches
    end

    def show
      @sandwich = Sandwich.find(params[:id])
      render json: @sandwich, serializer: SandwichShowSerializer
    end

    def create
      @sandwich = Sandwich.create(ingredients: params[:sandwich][:ingredients])
      render json: @sandwich, status: 200
    end

    def update
      @sandwich = Sandwich.find(params[:id])
      @sandwich.update(params[:sandwich][:ingredients])
      render json: @sandwich
    end

    def delete
      @sandwich = Sandwich.find(params[:id])
      @sandwich.destroy
      @sandwiches = Sandwich.all
      render json: @sandwiches
    end

  end

end
