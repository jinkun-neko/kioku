require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe 'モデルのテスト' do
    it "有効なcontactの場合は保存されるか" do
      expect(build(:contact)).to be_valid
    end

    context "空白のバリデーションチェック" do
      it "nameが空白の場合にエラーメッセージが返ってくるか" do
        contact = build(:contact, name: nil)
        contact.valid?
        expect(contact.errors[:name]).to include("を入力してください")
      end
      it "emailが空白の場合にエラーメッセージが返ってくるか" do
        contact = build(:contact, email: nil)
        contact.valid?
        expect(contact.errors[:email]).to include("を入力してください")
      end
      it "contentが空白の場合にエラーメッセージが返ってくるか" do
        contact = build(:contact, message: nil)
        contact.valid?
        expect(contact.errors[:message]).to include("を入力してください")
      end
    end

    context "文字数のバリデーションチェック" do
      it "nameの文字数が21文字以上の場合エラーメッセージが返ってくるか" do
        contact = build(:contact, name: "")
        contact.name =  Faker::Lorem.characters(number: 21)
        contact.valid?
        expect(contact.errors[:name]).to include("は20文字以内で入力してください")
      end
      it "messageの文字数が200以上の場合エラーメッセージが返ってくるか" do
        contact = build(:contact, message: "")
        contact.message =  Faker::Lorem.characters(number: 201)
        contact.valid?
        expect(contact.errors[:message]).to include("は200文字以内で入力してください")
      end
    end
  end
end
