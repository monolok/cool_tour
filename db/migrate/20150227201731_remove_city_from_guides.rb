class RemoveCityFromGuides < ActiveRecord::Migration
  def change
    remove_column :guides, :city, :string
  end
end
