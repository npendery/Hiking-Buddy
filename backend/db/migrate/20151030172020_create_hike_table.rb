class CreateHikeTable < ActiveRecord::Migration
  def change
    create_table :hikes do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.string :description, null: false
      t.string :website

      t.timestamps null: false
    end
  end
end
