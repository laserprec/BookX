class AddIsbnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :isbn, :integer
  end
end
