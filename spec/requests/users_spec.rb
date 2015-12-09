require 'rails_helper'
require 'request_helper'
require 'pry'


RSpec.describe "Users" do


  describe "index" do
    it "index's all users" do
      get users_path
      expect(response).to have_http_status(200)
    end
  end
end
