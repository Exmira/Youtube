class ChangeUid < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :uid, :string
    # Or, if you want to store it as a string
    # change_column :users, :uid, :string
  end

end
