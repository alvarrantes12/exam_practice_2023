class AddLevelToComediante < ActiveRecord::Migration[7.0]
  def change
    add_column :comediantes, :level, :integer
  end
end
