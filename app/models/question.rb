class Question < ApplicationRecord
  has_many :answers
  has_one :best_answer
end
