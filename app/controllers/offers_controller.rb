class OffersController < ApplicationController
  before_action :set_offer, only: %i[ show edit update destroy ]

  def index
    if params[:category_id].present?
      category = Category.find(params[:category_id])
      @offers = category.offers
    else
      @offers = Offer.all
    end
  end
  # GET /offers/1 or /offers/1.json
  def show
  end

  # GET /offers/new
  def new
    @offer = Offer.new
  end

  # GET /offers/1/edit
  def edit
  end

  # POST /offers or /offers.json
  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    respond_to do |format|
      if @offer.save
        format.html { redirect_to offer_url(@offer), notice: "Offer was successfully created." }
        format.json { render :show, status: :created, location: @offer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offers/1 or /offers/1.json
  def update
    respond_to do |format|
      if @offer.update(offer_params)
        if @offer.user == current_user
        format.html { redirect_to offer_url(@offer), notice: "Offer was successfully updated." }
        format.json { render :show, status: :ok, location: @offer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @offer.destroy
    @offer_image = Image.find(params[:id])
    item = @offer_image.item
    @offer_image.destroy
    respond_to do |format|
      format.html {redirect_to item_url(item), notice: 'Item photo was successfully destroyed.'}
      format.html { redirect_to offers_url, notice: "Offer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def remove_image_at_index(index)
    remain_images = @offer.images # copy the array
    deleted_image = remain_images.delete_at(index) # delete the target image
    deleted_image.try(:remove!) # delete image from S3
    @offer.images = remain_images # re-assign back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def offer_params
      params.require(:offer).permit(:title, :main_image, :offer_code, :offer_instructions, :expiration_date, :opening_time, :closing_time, :mobile, :address, {images: []}, :category_id, :featured, :verified, :user_id)
    end
end
end