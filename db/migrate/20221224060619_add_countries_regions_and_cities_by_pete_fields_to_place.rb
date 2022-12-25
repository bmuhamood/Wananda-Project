class AddCountriesRegionsAndCitiesByPeteFieldsToPlace < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :country, :string
    add_column :places, :region, :string
    add_column :places, :city, :string
  end
end
