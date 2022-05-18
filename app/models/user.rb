class User < ApplicationRecord

    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable,
    :confirmable, :lockable, :timeoutable, :trackable
    attachment :profile_image, type: :image

    has_many :posts, dependent: :destroy
    has_many :favorites, dependent: :destroy
    has_many :relationships, foreign_key: :following_id

    with_options presence: true  do
      validates :username
    end

    def already_favorited?(post)
      self.favorites.exists?(post_id: post.id)
    end

    def self.guest
      user = User.find_or_create_by!(email: 'guest3@example.com',username:"guest",profile:"私はguestログインの、ユーザーです。") do |user|
        user.password = SecureRandom.urlsafe_base64
        user.confirmed_at = Time.now  
      end
    end

  def is_confirmation_period_expired?
    # メールアドレス確認メール有効期限チェック(期限はconfig/initializers/devise.rbのconfirm_withinで設定)
    self.confirmation_period_expired?
  end
end
