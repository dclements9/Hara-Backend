class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :description
      t.string :stepOne
      t.string :stepTwo
      t.string :stepThree
      t.string :stepFour

      t.timestamps
    end
  end
end
