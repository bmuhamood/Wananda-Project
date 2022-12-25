class AddImageToCoupons < ActiveRecord::Migration[7.0]
  def change
    add_column :coupons, :image, :string
  end
end
