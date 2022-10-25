class Answer < ApplicationRecord
  belongs_to :question
  has_one :best_answer
end
