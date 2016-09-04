class AddCampusToUsersPostsAndProfiles< ActiveRecord::Migration
   def up
   	add_column "users", "campus", :string
  	add_column "posts", "campus", :string
  	add_column "profiles", "campus", :string
  end

  def down
  	remove_column "users", "campus"
  	remove_column "posts", "campus"
  	remove_column "profiles", "campus"
  end
end
