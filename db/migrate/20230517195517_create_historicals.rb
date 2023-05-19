class CreateHistoricals < ActiveRecord::Migration[7.0]
  def change
    create_table :historicals do |t|
      t.string :version
      t.belongs_to :comedian
      t.belongs_to :contract

      t.timestamps
    end
  end
end
