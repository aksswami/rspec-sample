require 'rails_helper'

RSpec.describe StatusesController, type: :controller do
  before(:each) do
    user = 'admin'
    pw = 'abc'
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user,pw)
    request.headers["accept"] = 'application/json'
  end


  describe "GET #index" do
      it "responds successfully with an HTTP 200 status code" do
          get :index
          expect(response).to be_success
          expect(response).to have_http_status(200)
      end
  end
end
