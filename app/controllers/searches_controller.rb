class SearchesController < ApplicationController
  def search
    @range = params[:range]
    if @range == "User"
      @users = User.looks(params[:search], params[:word])
    elsif @range == "Book"
      @books = Book.looks(params[:search], params[:word])
    else
      @books = Book.looks(params[:tag_name])
    end
  end
end
