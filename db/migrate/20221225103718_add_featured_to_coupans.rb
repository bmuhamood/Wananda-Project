class AddFeaturedToCoupans < ActiveRecord::Migration[7.0]
  def change
    add_column :coupans, :featured, :boolean, default: false
  end
end
