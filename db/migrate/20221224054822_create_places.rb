class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :title
      t.string :main_image
      t.string :offer_code
      t.text :offer_instructions
      t.datetime :expiration_date
      t.time :opening_time
      t.time :closing_time
      t.string :mobile
      t.string :images
      t.string :shop_number
      t.string :street
      t.string :landmark

      t.timestamps
    end
  end
end
