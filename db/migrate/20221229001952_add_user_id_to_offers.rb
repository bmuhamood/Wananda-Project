class AddUserIdToOffers < ActiveRecord::Migration[7.0]
  def change
    add_reference :offers, :user, null: true, foreign_key: true
  end
end
