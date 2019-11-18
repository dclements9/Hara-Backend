class Challenge < ApplicationRecord
    has_many :users

    validates :title, :description, presence: true
end
