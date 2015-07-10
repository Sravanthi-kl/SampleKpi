require 'rails_helper'

RSpec.describe "Frontpages", :type => :request do
  describe "GET /frontpages" do
    it "should show " do
      get frontpages_index_path
      expect(response).to have_http_status(200)
    end
  end
end
