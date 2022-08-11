class BooknamesController < ApplicationController
  before_action :set_bookname, only: %i[ show edit update destroy ]

  # GET /booknames or /booknames.json
  def index
    @booknames = Bookname.all
  end

  # GET /booknames/1 or /booknames/1.json
  def show
  end

  # GET /booknames/new
  def new
    @bookname = Bookname.new
  end

  # GET /booknames/1/edit
  def edit

  end

  # POST /booknames or /booknames.json
  def create
    @bookname = Bookname.new(bookname_params)

    respond_to do |format|
      if @bookname.save
        format.html { redirect_to bookname_url(@bookname), notice: "Bookname was successfully created." }
        format.json { render :show, status: :created, location: @bookname }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bookname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booknames/1 or /booknames/1.json
  def update
    respond_to do |format|
      if @bookname.update(bookname_params)
        format.html { redirect_to bookname_url(@bookname), notice: "Bookname was successfully updated." }
        format.json { render :show, status: :ok, location: @bookname }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bookname.errors, status: :unprocessable_entity }

      end


    end
  end

  # DELETE /booknames/1 or /booknames/1.json
  def destroy
    @bookname.destroy

    respond_to do |format|
      format.html { redirect_to booknames_url, notice: "Bookname was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookname
      @bookname = Bookname.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookname_params
      params.require(:bookname).permit(:book_name)
    end
end
