class RemovePunchesFromDb < ActiveRecord::Migration[7.0]
  def change

    drop_table :punches
  end
end
