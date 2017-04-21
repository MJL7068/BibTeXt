require 'rails_helper'

RSpec.describe "InProceedings", type: :request do
  describe "GET /in_proceedings" do
    it "works! (now write some real specs)" do
      get in_proceedings_path
      expect(response).to have_http_status(200)
    end
  end
end
