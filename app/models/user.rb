class User < ApplicationRecord
  validates_presence_of :username
  validates_presence_of :email

  has_many :played_games
end
