class AddCategoryIdToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :category_id, :integer
  end
end
