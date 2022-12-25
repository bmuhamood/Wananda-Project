class CreateCoupans < ActiveRecord::Migration[7.0]
  def change
    create_table :coupans do |t|
      t.string "title"
      t.string "coupon_code"
      t.text "redemption_instructions"
      t.datetime "expiration_date"
      t.string "image"

      t.timestamps
    end
  end
end
