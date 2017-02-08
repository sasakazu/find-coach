class AddJangleToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :jangle, :string
  end
end
