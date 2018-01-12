require "rails_helper"

RSpec.describe CryptosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cryptos").to route_to("cryptos#index")
    end

    it "routes to #new" do
      expect(:get => "/cryptos/new").to route_to("cryptos#new")
    end

    it "routes to #show" do
      expect(:get => "/cryptos/1").to route_to("cryptos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cryptos/1/edit").to route_to("cryptos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cryptos").to route_to("cryptos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cryptos/1").to route_to("cryptos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cryptos/1").to route_to("cryptos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cryptos/1").to route_to("cryptos#destroy", :id => "1")
    end

  end
end
