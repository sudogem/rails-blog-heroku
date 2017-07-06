class AddSaltToUserLogin < ActiveRecord::Migration
  def change
    add_column :user_logins, :salt, :string
  end
end
