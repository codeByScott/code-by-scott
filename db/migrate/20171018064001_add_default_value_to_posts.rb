class AddDefaultValueToPosts < ActiveRecord::Migration[5.0]
  def up
    change_column :posts, :published, :boolean, default: false
  end

  def down
    change_column :posts, :published, :boolean, default: nil
  end
end
