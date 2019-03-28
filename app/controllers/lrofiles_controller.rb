class LrofilesController < ApplicationController
  before_action :set_lrofile, only: [:show, :edit, :update, :destroy]

  # GET /lrofiles
  # GET /lrofiles.json
  def index
    @lrofiles = Lrofile.all
  end

  # GET /lrofiles/1
  # GET /lrofiles/1.json
  def show
  end

  # GET /lrofiles/new
  def new
    @lrofile = Lrofile.new
  end

  # GET /lrofiles/1/edit
  def edit
  end

  # POST /lrofiles
  # POST /lrofiles.json
  def create
    @lrofile = Lrofile.new(lrofile_params)

    respond_to do |format|
      if @lrofile.save
        format.html { redirect_to @lrofile, notice: 'Lrofile was successfully created.' }
        format.json { render :show, status: :created, location: @lrofile }
      else
        format.html { render :new }
        format.json { render json: @lrofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lrofiles/1
  # PATCH/PUT /lrofiles/1.json
  def update
    respond_to do |format|
      if @lrofile.update(lrofile_params)
        format.html { redirect_to @lrofile, notice: 'Lrofile was successfully updated.' }
        format.json { render :show, status: :ok, location: @lrofile }
      else
        format.html { render :edit }
        format.json { render json: @lrofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lrofiles/1
  # DELETE /lrofiles/1.json
  def destroy
    @lrofile.destroy
    respond_to do |format|
      format.html { redirect_to lrofiles_url, notice: 'Lrofile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lrofile
      @lrofile = Lrofile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lrofile_params
      params.require(:lrofile).permit(:firstname, :lastname, :address)
    end
end
