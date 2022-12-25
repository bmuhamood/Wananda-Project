class AddFeaturedToPlaces < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :featured, :boolean, default: false
  end
end
