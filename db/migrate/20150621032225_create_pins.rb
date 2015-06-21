class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.string :photo
      t.string :link
      t.string :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
