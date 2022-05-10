class Post < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :favorites, dependent: :destroy

  with_options presence: true  do
    validates :body
    validates :image
  end

  def day_delete?
    created_at + 21.hour > Date.today
  end
end
