require 'rails_helper'
require 'request_helper'
require 'pry'


RSpec.describe "Concerts" do
  let(:concert1) { FactoryGirl.create :concert }
  let(:concert2) { FactoryGirl.create :concert }


  describe "#index" do
    it "shows multiple concerts" do
      concert1
      concert2
      get concerts_path
      expect(response).to have_http_status(:success)
      expect(json.count).to eq 2
    end
  end

  describe "create"
    it "allows a band to create a concert"
    
end
