class BooksController < ApplicationController


def index

	@books = Book.all
	@book = Book.new

end
def new

	@book = Book.new

end
def edit

	@book = Book.find(params[:id])

end
def top
end

def show

	@book = Book.find(params[:id])

end
def update

    book = Book.find(params[:id])
    book.update(book_params)
    flash[:notice] = "You have updated book successfully.."
    redirect_to books_path

end
def create

	@book = Book.new(book_params)

    if @book.save
    flash[:notice] = "You have created book successfully."
    redirect_to books_path
    else
      @books = Book.all
      render :index
    end

end
def destroy

    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path

end
private
def book_params

    params.require(:book).permit(:title,:body)

end
end