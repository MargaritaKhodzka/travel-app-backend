class Api::V1::DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :update, :destroy]

  def index
    @destinations = Destination.all
    render json: @destinations
  end

  def show
    render json: @destination
  end

  def create
    @destination = Destination.new(destination_params)
    if @destination.save
      render json: @destination
    else
      render json: {error: 'Unable to create a new destination.'}
    end
  end

  def update
    if @destination.update(destination_params)
      render json: @destination
    else
      render json: {error: 'Unable to edit the destination.'}
    end
  end

  def destroy
    @destination.destroy
    render json: @destinations
  end

  private
  def destination_params
    params.require(:destination).permit(:name, :country, :image)
  end

  def set_destination
    @destination = Destination.find(params[:id])
  end

end
