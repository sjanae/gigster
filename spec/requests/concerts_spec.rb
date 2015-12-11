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

  describe "create" do
    let(:concert3) { FactoryGirl.attributes_for(:concert)}

    it "creates a concert" do
      token = FactoryGirl.create(:access_token)
      post concerts_path, {concert: concert3}, { 'authorization' => "Bearer #{token.token}"}
      expect(response).to have_http_status(:success)
    end

    it "rejects a fan" 

  end


end