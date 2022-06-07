require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'モデルのテスト' do
    it "有効なpostの場合は保存されるか" do
      expect(build(:post)).to be_valid
    end

    context "空白のバリデーションチェック" do
      it "imegeが空白の場合にエラーメッセージが返ってくるか" do
        post = build(:post, image: nil)
        post.valid?
        expect(post.errors[:image]).to include("を入力してください")
      end
      it "bodyが空白の場合にエラーメッセージが返ってくるか" do
        post = build(:post, body: nil)
        post.valid?
        expect(post.errors[:body]).to include("を入力してください")
      end
    end

    it "bodyの文字数最大200文字の場合、エラーメッセージが返ってくるか" do
      post = build(:post)
      post.body = Faker::Lorem.characters(number: 201)
      post.valid?
      expect(post.errors[:body]).to include("最大200文字です。")
    end
  end
end
