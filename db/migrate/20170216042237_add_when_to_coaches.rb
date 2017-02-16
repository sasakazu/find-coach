class AddWhenToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :when, :string
  end
end
