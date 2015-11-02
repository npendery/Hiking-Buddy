class Api::V1::HikesController < ApplicationController
  def index
    @hikes = Hike.all

    render json: @hikes
  end

  def show
    @hike = Hike.find(params[:id])

    render json: @hike
  end

  def new
    @hike = Hike.new
  end

  def create
    hike = Hike.new(hike_params)

    if hike.save
      render json: hike,
        status: :created,
        location: [:api, :v1, hike]
    else
      render json: { errors: hike.errors }, status: :unprocessable_entity
    end
  end

  def edit
    @hike = Hike.find(params[:id])
  end

  def update
    hike = Hike.find(params[:id])

    if hike.update(hike_params)
      render json: hike,
        status: :accepted,
        location: [:api, :v1, hike]
    else
      render json: { errors: hike.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    hike = Hike.find(params[:id])
    hike.destroy

    render json: hike
  end

  protected

  def hike_params
    list = [:name, :location, :description, :website]
    params.require(:hike).permit(list)
  end
end
