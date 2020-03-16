class CategoriesController < ApplicationController
  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @books = Book.where(category: @category)
  end

  def index
    @categories = Category.all
  end
end
