require "waitress/version"
require "pusher"

Pusher.app_id = ENV['PUSHER_APP_ID']
Pusher.key = ENV['PUSHER_KEY']
Pusher.secret = ENV['PUSHER_SECRET']

module Waitress
  def self.ping_pub_sub_with(message)
    Pusher['ls_trivia'].trigger(message, {})
  end

  def self.announce_new_game
    ping_pub_sub_with('new_game')
  end
end
