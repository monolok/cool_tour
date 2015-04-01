class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
		t.integer :rating
		t.text :comment
		t.integer :guide_id
		t.integer :visitor_id
      t.timestamps null: false
    end
  end
end
