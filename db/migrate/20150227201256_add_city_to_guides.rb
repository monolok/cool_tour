class AddCityToGuides < ActiveRecord::Migration
  def change
    add_column :guides, :city, :string
  end
end
