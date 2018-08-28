class CreateDepts < ActiveRecord::Migration[5.0]
  def change
    create_table :depts do |t|
      t.string :type
      t.string :condition
      t.text :year

      t.timestamps
    end
  end
end
