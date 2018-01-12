require 'rails_helper'

RSpec.describe "Cryptos", type: :request do
  describe "GET /cryptos" do
    it "works! (now write some real specs)" do
      get cryptos_path
      expect(response).to have_http_status(200)
    end
  end
end
