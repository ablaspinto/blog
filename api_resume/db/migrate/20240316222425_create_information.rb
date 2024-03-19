class CreateInformation < ActiveRecord::Migration[7.1]
  def change
    create_table :information do |t|
      t.string :text , null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
