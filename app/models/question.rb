class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_one :best_answer, dependent: :destroy
end
