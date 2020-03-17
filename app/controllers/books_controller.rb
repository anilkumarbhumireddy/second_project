class BooksController < ApplicationController
	    before_action:current_book,  only:[:edit ,:show , :update, :destroy]

       def index
        @books = Book.all
       end

  def show

  end

  def edit
  end

  def update
  	if @book.update(book_params)
       redirect_to(@book)
    else
      render "edit"
    end
  	
  end

  def new
    @books=Book.new
  end

  def create
  	@book = Book.create(book_params)
  	redirect_to book_path(@book)
  end

  def destroy
  	 @book.destroy
  	redirect_to book_path
  end

  private

  def book_params
  	params.require(:book).permit(:book_name,:book_author)
  end

  def current_book
    @book = Book.find(params[:id])
  end
end
