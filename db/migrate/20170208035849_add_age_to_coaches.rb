class AddAgeToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :age, :integer
  end
end
