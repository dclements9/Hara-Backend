class CreateUsersChallengesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :challenges do |t|
      t.index [:user_id, :challenge_id]
      t.index [:challenge_id, :user_id]
    end
  end
end
