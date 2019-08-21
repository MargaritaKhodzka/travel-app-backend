class Api::V1::CategoriesController < ApplicationController
  before_action :set_destination

  def index
    @categories = @destination.categories
    render json: @categories
  end

  def show
    @category = @destination.categories.find_by(id: params[:id])
    render json: @category
  end

  def create
    @category = @destination.categories.new(category_params)
    if @category.save
      render json: @destination
    else
      render json: {error: 'Unable to create a new category.'}
    end
  end

  def destroy
    @category = Category.find(params['id'])
    @category.destroy
    render json: @destination
  end

  private
  def category_params
    params.require(:category).permit(:title, :destination_id)
  end

  def set_destination
    @destination = Destination.find(params[:destination_id])
  end
end
