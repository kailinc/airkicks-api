require "rails_helper"

RSpec.describe ConnectShoeCollectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/connect_shoe_collections").to route_to("connect_shoe_collections#index")
    end

    it "routes to #new" do
      expect(:get => "/connect_shoe_collections/new").to route_to("connect_shoe_collections#new")
    end

    it "routes to #show" do
      expect(:get => "/connect_shoe_collections/1").to route_to("connect_shoe_collections#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/connect_shoe_collections/1/edit").to route_to("connect_shoe_collections#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/connect_shoe_collections").to route_to("connect_shoe_collections#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/connect_shoe_collections/1").to route_to("connect_shoe_collections#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/connect_shoe_collections/1").to route_to("connect_shoe_collections#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/connect_shoe_collections/1").to route_to("connect_shoe_collections#destroy", :id => "1")
    end

  end
end
