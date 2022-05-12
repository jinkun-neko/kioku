class Post < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  attachment :image, type: :image
  
  validates :image ,presence: true 
  validates :body, presence: true ,length: { in: 1..200 ,
    message: "最大%{count}文字です。"}   
  validates :hide, inclusion: [true, false]

  def day_delete?
    created_at + 1.days > Date.today
  end
end
