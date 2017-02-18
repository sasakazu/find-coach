class AddExplainToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :explain, :text
  end
end
