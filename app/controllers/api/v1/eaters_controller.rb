module Api::V1

  class EatersController < ApplicationController

    def index
      @eaters = Eater.all
      #serialized_eaters = @eaters.map{|eater| EaterSerializer.new(eater))}
      render json: { count: @eaters.count, eaters: @eaters }
    end

    def show
      @eater = Eater.find(params[:id])
      render json: @eater
    end

    def create
      @eater = Eater.create(eater: params[:eater][:name])
      render json: @eater, status: 200
    end

    def update
      @eater = Eater.find(params[:id])
      @eater.update(params[:eater])
      render json: @eater
    end

    def delete
      @eater = Eater.find(params[:id])
      @eater.destroy
      @eaters = Eater.all
      render json: @eaters
    end

  end
end
