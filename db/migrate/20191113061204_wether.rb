class Wether < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :wether, :string, limit:50, after: :name
  end
end
