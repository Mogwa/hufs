class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.string :user_id
      t.string :post_id
      t.belongs_to :user
      t.belongs_to :post
      t.timestamps
    end
  end
end
