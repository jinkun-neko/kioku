class Post < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :favorites, dependent: :destroy

  with_options presence: true  do
    validates :body
  end

  validates :image,  presence: true,  
    content_type: { in: %w[image/jpeg image/gif image/png],
    message: "must be a valid image format" },
    size:   { less_than: 5.megabytes,
    message: "should be less than 5MB" }

  validates :hide, inclusion: [true, false]

  def day_delete?
    created_at + 1.days > Date.today
  end
end
