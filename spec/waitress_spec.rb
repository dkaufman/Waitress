require 'waitress.rb'

describe "Waitress" do
  describe "#announce_new_game(game)" do
    it "sends a new_game ping to the pub_sub_channel" do
      Waitress.should_receive(:ping_pub_sub_with).with('new_game')
      Waitress.announce_new_game
    end
  end
end
