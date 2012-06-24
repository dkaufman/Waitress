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

  def self.announce_game_end
    ping_pub_sub_with('game_end')
  end

  def self.announce_new_question
    ping_pub_sub_with('new_question')
  end

  def self.announce_times_up
    ping_pub_sub_with('times_up')
  end
end
