class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :home_team
      t.integer :home_team_result
      t.integer :visit_team
      t.integer :visit_team_result
      t.integer :stadium
      t.string :start_date
      t.string :datetime
      t.string :tournament_id
      t.string :integer
      t.string :status

      t.timestamps null: false
    end
  end
end
