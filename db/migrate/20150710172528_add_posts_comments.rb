class AddPostsComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :text
      t.string :post_id
      t.timestamps
    end

    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :post_id
      t.timestamps
    end

  end
end
