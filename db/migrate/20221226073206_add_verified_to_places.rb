class AddVerifiedToPlaces < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :verified, :boolean, default: false
  end
end
