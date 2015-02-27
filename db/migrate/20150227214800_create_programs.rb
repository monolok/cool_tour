class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :city
      t.integer :length
      t.integer :price
      t.text :description
      t.string :name
      t.string :transportation

      t.timestamps null: false
    end
  end
end
