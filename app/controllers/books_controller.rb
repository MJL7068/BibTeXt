class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
    @page = Page.find(params[:page_id])
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @page = Page.find(params[:page_id])
    @book = Book.new(book_params.merge(:page_id => @page.id))

    respond_to do |format|
      if @book.save
        format.html { redirect_to '/' + @page.id.to_s, notice: 'Book was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to '/' + @page.id.to_s , notice: 'Book was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
      @page = Page.find(params[:page_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:ref_key, :author, :title, :publisher, :volume, :number, :series, :address, :edition, :year, :month, :note)
    end
end
