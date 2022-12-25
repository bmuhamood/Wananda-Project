class RenameImageInCoupans < ActiveRecord::Migration[7.0]
  def change
    rename_column :coupans, :image, :images
  end
end
