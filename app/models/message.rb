# frozen_string_literal: true

# A message in a chat room.
class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :body, presence: true, length: { minimum: 2, maximum: 1000 }
end
