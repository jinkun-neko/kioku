require 'rails_helper'

RSpec.describe "Posts", type: :request do
  before do
    before(:each) do
    @user = create(:user)
  end

    describe "GET /index" do
      it "returns http success" do
        sign_in user
        get posts_path , params: {id: @post.id}
        expect(response).to have_http_status(:success)
      end
    end

    describe "GET /show" do
      it "returns http success" do
        sign_in user
        get post_path , params: {id: @post.id}
        expect(response).to have_http_status(:success)
      end
    end

    describe "GET /new" do
      it "returns http success" do
        sign_in user
        post new_post_path , params: {id: @post.id , body: "今日は最高の日だった。" }
        expect(response).to have_http_status(:success)
      end
    end

    describe "GET /edit" do
      it "returns http success" do
        sign_in user
        get edit_post_path , params: {id: @post.id}
        expect(response).to have_http_status(:success)
      end
    end
  end
  end
