class AddLevelToComedians < ActiveRecord::Migration[7.0]
  def change
    add_column :comedians, :level, :integer
  end
end
