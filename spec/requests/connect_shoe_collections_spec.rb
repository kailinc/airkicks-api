require 'rails_helper'

RSpec.describe "ConnectShoeCollections", type: :request do
  describe "GET /connect_shoe_collections" do
    it "works! (now write some real specs)" do
      get connect_shoe_collections_path
      expect(response).to have_http_status(200)
    end
  end
end
