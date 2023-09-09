class ChangeUidDataTypeInUsers < ActiveRecord::Migration[6.0] # Use the appropriate version

  def change
    change_column :users, :uid, :bigint
    # Or, if you want to store it as a string
    # change_column :users, :uid, :string
  end

end