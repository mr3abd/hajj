class AddSicknessToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :sickness_id, :integer
  end
end
