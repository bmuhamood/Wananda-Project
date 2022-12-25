class RenameImagesInCoupans < ActiveRecord::Migration[7.0]
  def change
    rename_column :coupans, :images, :main_image
  end
end
