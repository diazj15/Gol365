class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.text :title

      t.timestamps null: false
    end
  end
end
