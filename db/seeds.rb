# user情報サンプル
User.create!(name:  "jinkun",
  email: "jin2jin700@gmail.com",
  password:  "jinjinjinjin",
  password_confirmation: "jinjinjinjin",
)
User.create!(name: "サボぼぼ",
  email: "jin2jin700@gmail.com",
  password:  "jinjin",
  password_confirmation: "jinjin",
)
User.create!(name:  "ゆうくん",
  email: "yuukun@gmail.com",
  password: "yuuyuu",
  password_confirmation: "yuuyuu",
)
User.create!(name:  "shiori",
  email: "shiori727@gmail.com",
  password:  "shioriLM",
  password_confirmation: "shioriLM",
)

# ユーザーの一部を対象にマイクロポストを生成する
users = User.order(:created_at).take(6)
50.times do
  body  = Faker::Lorem.sentence(word_count: 5)
  users.each { |user| user.posts.create!(body: content) }
end