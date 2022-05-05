class Post < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :posts, dependent: :destroy

  with_options presence: true  do
    validates :body
    validates :image
  end
end
