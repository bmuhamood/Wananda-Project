class AddFeaturedToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :featured, :boolean, default: false
  end
end
