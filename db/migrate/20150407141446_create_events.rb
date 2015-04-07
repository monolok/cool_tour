class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
		t.date :starts_at
		t.date :ends_at
		t.boolean :booked
		t.integer :program_id
      t.timestamps null: false
    end
  end
end
