class FeaturedController < ApplicationController
  def home
    @featured_offers = Offer.where(featured: true)
  end
end
