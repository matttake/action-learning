class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string "title", null: false
      t.text "fact"
      t.text "perceive"
      t.string "image",null: false
      t.string "action"
      t.text "action2"
      t.text "action3"
      t.text "user_id"
      t.text "publisher", null: false
      t.text "author", null: false
      t.date "issu", null: false
      t.integer "page", null: false
      t.string "hit", null: false
      t.date "read", null: false
      t.boolean "indication"  
      t.timestamps
    end
  end
end
