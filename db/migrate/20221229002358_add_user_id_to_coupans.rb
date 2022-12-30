class AddUserIdToCoupans < ActiveRecord::Migration[7.0]
  def change
    add_reference :coupans, :user, null: true, foreign_key: true
  end
end
