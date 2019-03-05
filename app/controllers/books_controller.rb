class BooksController < ApplicationController

  def index
    if params[:category].blank?
      @books = Book.all.order(created_at: :desc)
    else
      @category_id = Category.find_by(name: params[:category]).id
      @books = Book.where(category_id: @category_id).order(created_at: :desc)
    end
  end

  def show
    @book = Book.find(params[:id])
  end

end
