class CreateReviewGuides < ActiveRecord::Migration
  def change
    create_table :review_guides do |t|
		t.integer :rating
		t.text :comment
		t.integer :guide_id
      t.timestamps null: false
    end
  end
end
