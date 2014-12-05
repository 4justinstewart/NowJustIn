class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :summary, null: false
      t.text :main_content, null: false
      t.integer :user_id, null:false

      t.timestamps
    end
  end
end
