class BlahsController < ApplicationController
  before_action :set_blah, only: %i[ show edit update destroy ]

  # GET /blahs or /blahs.json
  def index
    @blahs = Blah.all
  end

  # GET /blahs/1 or /blahs/1.json
  def show
  end

  # GET /blahs/new
  def new
    @blah = Blah.new
  end

  # GET /blahs/1/edit
  def edit
  end

  # POST /blahs or /blahs.json
  def create
    @blah = Blah.new(blah_params)

    respond_to do |format|
      if @blah.save
        format.html { redirect_to blah_url(@blah), notice: "Blah was successfully created." }
        format.json { render :show, status: :created, location: @blah }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blahs/1 or /blahs/1.json
  def update
    respond_to do |format|
      if @blah.update(blah_params)
        format.html { redirect_to blah_url(@blah), notice: "Blah was successfully updated." }
        format.json { render :show, status: :ok, location: @blah }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blahs/1 or /blahs/1.json
  def destroy
    @blah.destroy

    respond_to do |format|
      format.html { redirect_to blahs_url, notice: "Blah was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blah
      @blah = Blah.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blah_params
      params.require(:blah).permit(:comment, :user_id, :blog_id)
    end
end
