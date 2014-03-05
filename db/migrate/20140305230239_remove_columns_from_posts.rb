class RemoveColumnsFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :thumbnail, :string
    remove_column :posts, :thumbnail_file_name, :string
    remove_column :posts, :thumbnail_content_type, :string
    remove_column :posts, :thumbnail_file_size, :string
    remove_column :posts, :thumbnail_updated_at, :string
    remove_column :posts, :portrait, :string
    remove_column :posts, :avatar, :string
    remove_column :posts, :avatar_file_name, :string
  end
end
