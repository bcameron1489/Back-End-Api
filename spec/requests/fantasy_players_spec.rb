require 'rails_helper'

RSpec.describe "FantasyPlayers", type: :request do
  describe "GET /fantasy_players" do
    it "works! (now write some real specs)" do
      get fantasy_players_path
      expect(response).to have_http_status(200)
    end
  end
end
