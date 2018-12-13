class CreateSeouls < ActiveRecord::Migration[5.0]
  def change
    create_table :seouls do |t|
      t.string :condition
      t.text :year

      t.timestamps
    end
  end
end
