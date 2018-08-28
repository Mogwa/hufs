class CreateMinors < ActiveRecord::Migration[5.0]
  def change
    create_table :minors do |t|
      t.string :korean
      t.string :english
      t.string :homepage

      t.timestamps
    end
  end
end
