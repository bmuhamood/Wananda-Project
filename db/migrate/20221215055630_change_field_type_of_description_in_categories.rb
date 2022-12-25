class ChangeFieldTypeOfDescriptionInCategories < ActiveRecord::Migration[7.0]
  def change
    change_column :categories, :description, :text
  end
end
