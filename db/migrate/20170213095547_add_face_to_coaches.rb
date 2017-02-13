class AddFaceToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :face, :string
  end
end
