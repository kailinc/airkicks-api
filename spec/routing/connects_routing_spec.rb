require "rails_helper"

RSpec.describe ConnectsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/connects").to route_to("connects#index")
    end

    it "routes to #new" do
      expect(:get => "/connects/new").to route_to("connects#new")
    end

    it "routes to #show" do
      expect(:get => "/connects/1").to route_to("connects#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/connects/1/edit").to route_to("connects#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/connects").to route_to("connects#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/connects/1").to route_to("connects#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/connects/1").to route_to("connects#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/connects/1").to route_to("connects#destroy", :id => "1")
    end

  end
end
