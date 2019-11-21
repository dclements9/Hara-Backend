class ChangeRankToBeStringInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :rank, :string
  end
end
