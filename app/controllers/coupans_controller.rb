class CoupansController < ApplicationController
  before_action :set_coupan, only: %i[ show edit update destroy ]

  # GET /coupans or /coupans.json
  def index
    @coupans = Coupan.all
  end

  # GET /coupans/1 or /coupans/1.json
  def show
  end

  # GET /coupans/new
  def new
    @coupan = Coupan.new
  end

  # GET /coupans/1/edit
  def edit
  end

  # POST /coupans or /coupans.json
  def create
    @coupan = Coupan.new(coupan_params)

    respond_to do |format|
      if @coupan.save
        format.html { redirect_to coupan_url(@coupan), notice: "Coupon was successfully created." }
        format.json { render :show, status: :created, location: @coupan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coupan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coupans/1 or /coupans/1.json
  def update
    respond_to do |format|
      if @coupan.update(coupan_params)
        format.html { redirect_to coupan_url(@coupan), notice: "Coupon was successfully updated." }
        format.json { render :show, status: :ok, location: @coupan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coupan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coupans/1 or /coupans/1.json
  def destroy
    @coupan.destroy

    respond_to do |format|
      format.html { redirect_to coupans_url, notice: "Coupon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coupan
      @coupan = Coupan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coupan_params
      params.require(:coupan).permit(:title, :coupon_code, :redemption_instructions, :expiration_date, :main_image, :image, :featured)
    end
end
