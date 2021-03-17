class PopularcountOfPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :popularcount, :bigint, default: 0
  end
end
