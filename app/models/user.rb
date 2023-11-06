class User < ApplicationRecord
    has_many :posts, dependent: :destroy 
    validates :name, presence: true
  # dependent: :destroy means the comments related 
  # to the specific post in mention get deleted if the post does.
end
