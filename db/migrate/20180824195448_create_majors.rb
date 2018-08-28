class CreateMajors < ActiveRecord::Migration[5.0]
  def change
    create_table :majors do |t|
      t.string :korean
      t.string :english
      t.string :homepage

      t.timestamps
    end
  end
end
