class CreateEventos < ActiveRecord::Migration[7.0]
  def change
    create_table :eventos do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.belongs_to :comedian

      t.timestamps
    end
  end
end
