class PlayedGame < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :level
end
