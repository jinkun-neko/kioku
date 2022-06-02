require 'rails_helper'

RSpec.describe "Users", type: :request do
  before do
    before(:each) do
    @user = create(:user)
  end

    describe "GET /index" do
      it "returns http success" do
        get users_path(id: @user.id)
        expect(response).to have_http_status(:success)
      end
    end

    describe "GET /show" do
      it "returns http success" do
        get user_path(id: @user.id)
        expect(response).to have_http_status(:success)
      end
    end

    describe "GET /edit" do
      it "returns http success" do
        get edit_user_path(id: @user.id)
        expect(response).to have_http_status(:success)
      end
    end
  end
end
