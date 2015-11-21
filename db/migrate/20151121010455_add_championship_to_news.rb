class AddChampionshipToNews < ActiveRecord::Migration
  def change
    add_column :news, :championship, :string
  end
end
