require 'rails_helper'

RSpec.describe 'Posts', type: :system do
  let(:post) { create(:post) }

  describe 'Post CRUD' do
    describe '投稿前' do
      describe 'ユーザー新規登録' do
        context '投稿フォームの入力値が正常' do
          it 'ユーザーの新規作成が成功' do
            it 'ユーザーの新規作成が成功' do
              visit new_user_registration_path
              fill_in 'ユーザー名', with: 'test_name'
              fill_in 'メールアドレス', with: 'test@example.com'
              fill_in 'パスワード', with: 'password'
              fill_in '確認用パスワード', with: 'password'
              click_button '登録'
              expect(current_path).to eq new_user_registration_path
          end
          end
        end
        context 'コメント未記入' do

        end
        context '写真なし' do

        end
        context 'タイムライン非表示' do

        end
      end
    end
    describe '投稿後' do
      describe '投稿編集'
        context '投稿の入力値が正常' do
        end
        context 'コメント未記入' do
      end
        context 'タイムライン表示されているか' do
        end
        context '24時間で消されているか' do
      end
    end
  end
end