class AddCountryToNews < ActiveRecord::Migration
  def change
    add_column :news, :country, :string
  end
end
