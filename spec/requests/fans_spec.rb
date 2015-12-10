require 'rails_helper'
require 'request_helper'
require 'pry'


RSpec.describe "Fans" do


  describe "index" do
    it "index's all fans" do
      get fans_path
      expect(response).to have_http_status(200)
    end
  end
  
end
