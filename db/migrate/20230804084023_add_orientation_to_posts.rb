class AddOrientationToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :orientation, :boolean
  end
end
