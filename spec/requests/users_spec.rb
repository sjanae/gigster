require 'rails_helper'
require 'request_helper'
require 'pry'


RSpec.describe "Users" do
  let(:user1) { FactoryGirl.create :user }
  let(:user2) { FactoryGirl.create :user }


  describe "#index" do
    it "shows multiple users" do
      user1
      user2
      get users_path
      expect(response).to have_http_status(:success)
      expect(json.count).to eq 2
    end
  end

  describe "tokens" do
    let(:user3) { FactoryGirl.create :user, password:"password"}

    it "allows a band to login" do
      user3
      payload = {
        grant_type: "password",
        username: user3.email,
        password: "password"
      }
      post oauth_token_path, payload
      expect(response).to have_http_status(:success)
      expect(json["access_token"]).to_not be_empty
    end

    it "fails if password is wrong" do
      user3
      payload = {
        grant_type: "password",
        username: user3.email,
        password: "wrong"
      }
      post oauth_token_path, payload
      expect(response).to have_http_status(:unauthorized)
    end
  end

  describe "register" do
    it "allows a user to register" do
      payload = {
        "user": {
          "name": "Namer",
          "email": "test",
          "password": "test",
          "location": "null",
          "type": "Fan"
        }
      }
      post users_path(payload)
      expect(response).to have_http_status(:created)
    end
  end

  # describe "delete"do
  #   let(:user4) { FactoryGirl.create :user, password: "password" }
  #
  #   it "deletes a user" do
  #     user4
  #     payload = {
  #       grant_type: "password",
  #       username: user4.email,
  #       password: "password"
  #     }
  #     post oauth_token_path(payload)
  #     token = json["access_token"]
  #     # binding.pry
  #     delete user_path(format: :json), {user: user4}, { 'authorization' => "Bearer #{token}"}
  #     expect(response).to have_http_status(:success)
  #   end
  # end
end
