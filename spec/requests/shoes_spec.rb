require 'rails_helper'

RSpec.describe "Shoes", type: :request do
  describe "GET /shoes" do
    it "works! (now write some real specs)" do
      get shoes_path
      expect(response).to have_http_status(200)
    end
  end
end
