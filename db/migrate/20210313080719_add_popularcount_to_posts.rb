class AddPopularcountToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :popularcount, :bigint
  end
end
