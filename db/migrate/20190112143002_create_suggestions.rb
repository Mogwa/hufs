class CreateSuggestions < ActiveRecord::Migration[5.0]
  def change
    create_table :suggestions do |t|
      t.string :title
      t.text :content
      t.string :major_campus
      t.string :major_id
      t.string :user

      t.timestamps
    end
  end
end
