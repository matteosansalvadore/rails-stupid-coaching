class QuestionsController < ApplicationController
  # Rails.application.routes.draw do
  #   # Generic syntax:
  #   # verb "path", to: "controller#action"
  #   get "about", to: "pages#about"
  # end
  def ask
  end

  def answer
    @question = params[:question]
      if @question.blank?
        @answer = "I can't hear you!"
      elsif @question =~ /i going to work i/
        @answer = "great!"
      elsif @question.ends_with?("?")
        @answer = "no questions"
      else
        @answer = "dont care"
      end
  end
end
