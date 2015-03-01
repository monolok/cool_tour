class RemoveLengthFromPrograms < ActiveRecord::Migration
  def change
    remove_column :programs, :length, :time
  end
end
