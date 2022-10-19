module Api
    class QuestionsController < ApplicationController
      def index
        questions = Question.all
        render json: {
          questions: questions
        }, status: :ok
      end
    end
end