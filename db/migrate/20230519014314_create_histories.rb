class CreateHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :histories do |t|
      t.string :version
      t.belongs_to  :contract
      t.belongs_to  :comedian

      t.timestamps
    end
  end
end
