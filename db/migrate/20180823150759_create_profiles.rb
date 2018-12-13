class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      
      t.string  :name
      t.integer :year
      t.string :major_campus
      t.string :minor_campus
      t.string :study_type
      t.belongs_to :major, foreign_key: true
      t.belongs_to :minor, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
