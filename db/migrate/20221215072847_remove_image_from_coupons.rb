class RemoveImageFromCoupons < ActiveRecord::Migration[7.0]
  def change
    remove_column :coupons, :image
  end
end
