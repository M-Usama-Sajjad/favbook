class AuthornamesController < ApplicationController
  before_action :set_authorname, only: %i[ show edit update destroy ]

  # GET /authornames or /authornames.json
  def index
    @authornames = Authorname.all
  end

  # GET /authornames/1 or /authornames/1.json
  def show
  end

  # GET /authornames/new
  def new
    @authorname = Authorname.new
  end

  # GET /authornames/1/edit
  def edit
  end

  # POST /authornames or /authornames.json
  def create
    @authorname = Authorname.new(authorname_params)

    respond_to do |format|
      if @authorname.save
        format.html { redirect_to authorname_url(@authorname), notice: "Authorname was successfully created." }
        format.json { render :show, status: :created, location: @authorname }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authorname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authornames/1 or /authornames/1.json
  def update
    respond_to do |format|
      if @authorname.update(authorname_params)
        format.html { redirect_to authorname_url(@authorname), notice: "Authorname was successfully updated." }
        format.json { render :show, status: :ok, location: @authorname }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authornames/1 or /authornames/1.json
  def destroy
    @authorname.destroy

    respond_to do |format|
      format.html { redirect_to authornames_url, notice: "Authorname was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorname
      @authorname = Authorname.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorname_params
      params.require(:authorname).permit(:author_name, booknames_attributes: [:id , :_destroy ,:book_name,:image] )
    end
end
