class CreateUserLogins < ActiveRecord::Migration[4.2]
  def change
    create_table :user_logins do |t|
      t.string :email, :length => 255
      t.string :name, :length => 255
      t.string :password_digest, :length => 255
      t.string :image_url
      t.timestamps null: false
    end
  end
end
