require 'rails_helper'

RSpec.feature 'Posts', type: :feature do
  let(:user) { build(:user) }
  scenario 'ユーザー情報が更新されていること' do
    #ログイン前には投稿ボタンがない
    visit posts_path(id: user.id)
    # 投稿ボタンがないことを確認
    expect(page).to have_no_content('投稿する')

    # ログイン処理
    # ログインフォームのあるページに移動する
    visit new_user_session_path
    # emailを入力する
    fill_in 'user_email', with: user.email
    # パスワードを入力する
    fill_in 'user_password', with: user.password
    # ログインボタンをおす
    find('input[name="commit"]').click
    expect(current_path).to eq root_path
    expect(page).to have_content('投稿する')

    # ツイートの投稿
    expect {
      click_link('投稿する')
      expect(current_path).to eq new_tweet_path
      fill_in 'image', with: ''
      fill_in 'text', with: 'フューチャースペックのテスト'
      find('input[type="submit"]').click
    }.to change(Post, :count).by(1)
  end
end
