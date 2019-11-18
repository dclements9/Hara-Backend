class Challenge < ApplicationRecord
    has_and_belongs_to_many :users

    validates :title, :description, presence: true
end
