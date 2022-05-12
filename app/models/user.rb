class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
  attachment :profile_image, type: :image

  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :relationships, foreign_key: :following_id

  validates :profile ,length:{ in: 1..200 , message: "最大%{count}文字です。"}   

  with_options presence: true  do
    validates :username
  end

  def already_favorited?(post)
    self.favorites.exists?(post_id: post.id)
  end

  def self.guest
    user = User.find_or_create_by!(email: 'guest@example.com', username:"ゲスト") do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
end
