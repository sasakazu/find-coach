class AddAreaToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :area, :string
  end
end
