class AddMoneyToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :money, :integer
  end
end
