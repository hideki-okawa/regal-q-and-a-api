module Api
  class AnswersController < ApplicationController
    def index
      answers = Question.find(params[:question_id]).answers
      render json: {
        answers: answers
      }, status: :ok
    end
  end
end
