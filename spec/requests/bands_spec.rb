require 'rails_helper'
require 'request_helper'
require 'pry'


RSpec.describe "Bands" do


  describe "index" do
    it "index's all bands" do
      get bands_path
      expect(response).to have_http_status(200)
    end
  end
end
