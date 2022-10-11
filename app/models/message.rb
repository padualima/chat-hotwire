class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user

  # target: will search for div with id equal to target
  broadcasts_to :room, partial: "rooms/messages/message", target: "messages"
end
