class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      
      t.string :name,               null: false, unique: true, index: true
      t.text :content
      t.timestamps
    end
  end
end
