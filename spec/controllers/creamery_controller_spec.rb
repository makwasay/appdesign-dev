require 'rails_helper'

RSpec.describe CreameryController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #aboutus" do
    it "returns http success" do
      get :aboutus
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #contactus" do
    it "returns http success" do
      get :contactus
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #privacy" do
    it "returns http success" do
      get :privacy
      expect(response).to have_http_status(:success)
    end
  end

end
