require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    before(:each) do
    @user = create(:user)
    @post = create(:post, user_id: user.id)
  end

    describe 'post登録' do
      it "postがバリデーションが掛からなければOK" do
        expect(@post).to be_valid  # user.valid? が true になればパスする
      end

      it "postの内容があっていればOK" do
        expect(@post.body).to eq("jinkunは、とても立派です。")# user.valid? が true になればパスする
      end

      it "postが中身がなければOK" do
        @post.body = "" 
        expect(@post.body).to eq("rrrrrrr")# user.valid? が true になればパスする
      end
    end
  end
end
