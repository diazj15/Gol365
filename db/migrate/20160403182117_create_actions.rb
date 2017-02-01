class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
