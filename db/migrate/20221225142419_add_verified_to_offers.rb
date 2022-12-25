class AddVerifiedToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :verified, :boolean, default: false
  end
end
