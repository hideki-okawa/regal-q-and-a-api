class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_one :best_answer, dependent: :destroy

  validates :title, :content, :user_name, presence: true
  validates :title, length: { minimum: 10, maximum: 50 }
  validates :content, length: { minimum: 50 }
  validates :user_name, length: { minimum: 3, maximum: 20 }
end
