require 'rails_helper'

RSpec.describe "Registrations", type: :request do
  describe "GET /create" do
    it "creates a User and redirects to the create user page" do
      get "/sign_up"
      expect(response).to have_http_status(:ok)
  
      post "/sign_up", :params => { :user => { :name => "Mat", email: 'matt@matt.com', password: 'Abc1234' } }
      expect(response).to have_http_status(302)
  
      follow_redirect!
  
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/registrations/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /user_params" do
    it "returns http success" do
      get "/registrations/user_params"
      expect(response).to have_http_status(:success)
    end
  end
end
