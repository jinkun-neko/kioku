class Contact < ApplicationRecord
  validates :email, presence: true, length: {maximum:255},
                    format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :message, presence: true , length: { maximum: 200 }
  validates :name, presence: true , length: {maximum:20}
  enum subject: {About_the_app: 1, About_work: 2, others: 3} 
end
