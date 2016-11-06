class AddPriceAndEditionToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :price, :integer
    add_column :posts, :edition, :integer
  end
end
