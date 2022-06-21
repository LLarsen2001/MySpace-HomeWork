class AddFollowedProfilesToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :followed_profiles, :text
  end
end
