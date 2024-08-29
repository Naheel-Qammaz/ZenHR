class Tweet < ApplicationRecord
    validates :description, presence: true, length: { minimum: 10, maximum: 20 }, uniqueness: true
end