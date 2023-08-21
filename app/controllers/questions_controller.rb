class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @response = params[:question]
    if @response == 'I am going to work'
      @reply = 'Great!'
    elsif @response.include?('?')
      @reply = 'Silly question, get dressed and go to work!'
    else
      @reply = "I don´t care, get dressed and go to work!"
    end
  end
end
