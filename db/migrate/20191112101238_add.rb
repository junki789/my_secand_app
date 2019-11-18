class Add < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :name, :string, limit:50, before: :content
  end
end
