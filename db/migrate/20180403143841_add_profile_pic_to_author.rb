class AddProfilePicToAuthor < ActiveRecord::Migration[5.1]
  def change
    add_column :authors, :profile_pic, :string
  end
end
