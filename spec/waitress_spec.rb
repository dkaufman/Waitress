require 'waitress.rb'

describe "Waitress" do
  describe "#announce_new_game" do
    it "sends a new_game ping to the pub_sub_channel" do
      Waitress.should_receive(:ping_pub_sub_with).with('new_game')
      Waitress.announce_new_game
    end
  end

  describe "#announce_game_end" do
    it "sends a game_end ping to the pub_sub_channel" do
      Waitress.should_receive(:ping_pub_sub_with).with('game_end')
      Waitress.announce_game_end
    end
  end

  describe "#announce_new_question" do
    it "sends a new_question ping to the pub_sub_channel" do
      Waitress.should_receive(:ping_pub_sub_with).with('new_question')
      Waitress.announce_new_question
    end
  end

  describe "announce_times_up" do
    it "sends a times_up ping to the pub_sub_channel" do
      Waitress.should_receive(:ping_pub_sub_with).with('times_up')
      Waitress.announce_times_up
    end
  end

  describe "announce_new_response(response)" do
    it "sends a new_response ping to the pub_sub_channel with the response id" do
      Waitress.should_receive(:ping_pub_sub_with).with('new_response', 4)
      Waitress.announce_new_response(double(id: 4))
    end
  end

  describe "announce_new_team" do
    it "sends a new_team ping to the pub_sub_channel" do
      Waitress.should_receive(:ping_pub_sub_with).with('new_team')
      Waitress.announce_new_team
    end
  end
end
