class FeaturedController < ApplicationController
  def home
    @featured_offers = Offer.where(featured: true)
    @featured_places = Place.where(featured: true)
    @featured_coupans = Coupan.where(featured: true)
  end
end
