require "rails_helper"

RSpec.describe FantasyPlayersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fantasy_players").to route_to("fantasy_players#index")
    end


    it "routes to #show" do
      expect(:get => "/fantasy_players/1").to route_to("fantasy_players#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/fantasy_players").to route_to("fantasy_players#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/fantasy_players/1").to route_to("fantasy_players#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/fantasy_players/1").to route_to("fantasy_players#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fantasy_players/1").to route_to("fantasy_players#destroy", :id => "1")
    end

  end
end
