class RenameRegionInPlaces < ActiveRecord::Migration[7.0]
  def change
    rename_column :places, :region, :state
  end
end
