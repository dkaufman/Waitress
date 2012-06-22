require "waitress/version"

module Waitress
  def self.ping_pub_sub_with(message)
    Pusher['ls_trivia'].trigger(message, {})
  end

  def self.announce_new_game
    ping_pub_sub_with('new_game')
  end
end
