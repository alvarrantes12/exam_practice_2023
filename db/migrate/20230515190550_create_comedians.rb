class CreateComedians < ActiveRecord::Migration[7.0]
  def change
    create_table :comedians do |t|
      t.string :first_name
      t.string :last_name
      t.integer :id_number

      t.timestamps
    end
  end
end
