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

    def create
      post_question = Question.new(
        title: params[:title],
        content: params[:content],
        user_name: params[:user_name]
      )

      if post_question.save
        render json: {
          question: post_question
        }, status: :created
      else
        render json: {
          errors: post_question.errors
        }, status: :internal_server_error
      end
    end
  end
end
