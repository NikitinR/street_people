class RemoveColumnsFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :thumbnail, :string
  end
end
