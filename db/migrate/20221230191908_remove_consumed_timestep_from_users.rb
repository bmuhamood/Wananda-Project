class RemoveConsumedTimestepFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :consumed_timestep, :string
  end
end
