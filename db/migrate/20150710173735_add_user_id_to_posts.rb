class AddUserIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer
    remove_column :posts, :post_id, :integer
  end
end
