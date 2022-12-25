class AddImagesToOffer < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :images, :string, array: true, default: []
  end
end
