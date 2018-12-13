class CreateGlobals < ActiveRecord::Migration[5.0]
  def change
    create_table :globals do |t|
      t.string :condition
      t.text :start_year
      t.text :end_year

      t.timestamps
    end
  end
end
