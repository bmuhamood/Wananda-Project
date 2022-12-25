class CreateCategoriesOffersJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :categories, :offers do |t|
      t.index [:category_id, :offer_id]
      t.index [:offer_id, :category_id]
    end
  end
end
