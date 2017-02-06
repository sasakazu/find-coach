class AddSexToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :sex, :string
  end
end
