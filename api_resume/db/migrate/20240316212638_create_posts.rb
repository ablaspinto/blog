class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :name, null: false
      t.string :title null: false
      t.text :content null: false

      t.timestamps
    end
  end
end
