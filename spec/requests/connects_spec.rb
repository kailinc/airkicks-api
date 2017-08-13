require 'rails_helper'

RSpec.describe "Connects", type: :request do
  describe "GET /connects" do
    it "works! (now write some real specs)" do
      get connects_path
      expect(response).to have_http_status(200)
    end
  end
end
