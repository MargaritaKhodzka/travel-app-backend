class Api::V1::CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]

  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    render json: @category
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      render json: @category
    else
      render json: {error: 'Unable to create a new category.'}
    end
  end

  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: {error: 'Unable to update the category.'}
    end
  end

  def destroy
    @category.destroy
  end

  private
  def category_params
    params.require(:category).permit(:title)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
