class CreateDepts < ActiveRecord::Migration[5.0]
  def change
    create_table :depts do |t|
      t.string :type
      t.string :condition
      t.text :start_year
      t.text :end_year
      t.text :information

      t.timestamps
    end
  end
end
