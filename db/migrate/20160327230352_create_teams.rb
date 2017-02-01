class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.text :name
      t.text :complete_name
      t.string :stadium_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
