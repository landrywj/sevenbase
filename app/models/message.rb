# frozen_string_literal: true

# A message in a chat room.
class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :body, presence: true, length: { minimum: 2, maximum: 1000 }
  after_commit { broadcast_append_to "room_#{room.id}" }


  # def broadcast_message
  #   ActionCable.server.broadcast('MessagesChannel', { message: self, user: self.user })
  #   ActionCable.server.broadcast("room_#{room.id}", self)
  # end
end
