class Lesson < ApplicationRecord
    has_many :users

    validates :title, :description, presence: true
end
