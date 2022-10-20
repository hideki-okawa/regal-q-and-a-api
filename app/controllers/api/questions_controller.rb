module Api
  class QuestionsController < ApplicationController
    def index
      questions = Question.all
      render json: {
        questions: questions
      }, status: :ok
    end

    def show
      question = Question.find(params[:id])

      render json: {
        question: question
      }, status: :ok
    end
  end
end
