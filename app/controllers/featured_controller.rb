class FeaturedController < ApplicationController
  def home
    @verified_offers = Offer.where(verified: true)
    @featured_places = Place.where(featured: true)
    @featured_coupans = Coupan.where(featured: true)
  end
end
