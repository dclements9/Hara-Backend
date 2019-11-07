class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :description
      t.date :date
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
