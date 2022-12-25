class AddImageToCouponTables < ActiveRecord::Migration[7.0]
  def change
    add_column :coupon_tables, :image, :string
  end
end
