class CreateActionlists < ActiveRecord::Migration
  def change
    create_table :actionlists do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
