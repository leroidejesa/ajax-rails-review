class SetUsernameDefault < ActiveRecord::Migration
  def change
    remove_column :users, :username, :string
    add_column :users, :username, :string, default: ""
  end
end
