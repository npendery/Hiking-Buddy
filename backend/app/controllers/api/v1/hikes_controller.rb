class API::V1::HikesController < ApplicationController
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
    @hike = Hike.new(hike_params)

    if @hike.save
      flash[:success] = "Hike added!"
      # redirect_to hike_path(@hike)
      render json: @hike
    else
      flash[:errors] = @hike.errors.full_messages.join(". ")
      # render :new
      render json: { errors: word.errors }, status: :unprocessable_entity
    end
  end

  def edit
  @hike = Hike.find(params[:id])
end

def update
  @hike = Hike.find(params[:id])

  if @hike.update(hike_params)
    flash[:success] = "Hike updated."
    redirect_to hike_path(@hike)
  else
    flash[:errors] = @hike.errors.full_messages.join(". ")
    render :edit
  end
end

def destroy
  @hike = Hike.find(params[:id])
  @hike.destroy
  flash[:success] = "Hike deleted."
  redirect_to hikes_path
end


  protected

  def hike_params
    list = [:name, :location, :description, :website]
    params.require(:hike).permit(list)
  end
end
