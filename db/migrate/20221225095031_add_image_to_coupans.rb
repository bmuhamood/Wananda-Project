class AddImageToCoupans < ActiveRecord::Migration[7.0]
  def change
    add_column :coupans, :image, :string
  end
end
