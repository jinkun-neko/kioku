require 'rails_helper'

RSpec.feature'Users', type: :feature do
  let(:user) { build(:user) }

  describe 'User CRUD' do
    describe 'ログイン前' do
      describe 'ユーザー新規登録' do
        context 'フォームの入力値が正常' do
            it 'ユーザーの新規作成が成功' do
              visit new_user_registration_path
              fill_in 'ユーザー名', with: 'test_name'
              fill_in 'メールアドレス', with: 'test@example.com'
              fill_in 'パスワード', with: 'password'
              fill_in '確認用パスワード', with: 'password'
              click_button '登録'
              expect(current_path).to eq new_user_registration_path
                # expect(page).to have_content 'メールアドレスはすでに存在します。'

          end
        end
        context 'メールアドレス未記入' do

        end
        context '登録済メールアドレス' do
          it 'ユーザーの新規作成が失敗する' do
            visit new_user_registration_path
            fill_in 'ユーザー名', with: 'test_name'
            fill_in 'メールアドレス', with: user.email
            fill_in 'パスワード', with: 'password'
            fill_in '確認用パスワード', with: 'password'
            click_button '登録'
            expect(current_path).to eq new_user_registration_path
            expect(page).to have_text 'メールアドレスはすでに存在します。'
          end
        end
      end
    end
    describe 'ログイン後' do
      describe 'ユーザー編集'
        context 'フォームの入力値が正常' do

        end
        context 'メールアドレス未記入' do

        end
    end
  end
end