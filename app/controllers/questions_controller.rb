class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    line = @question

    @answer = get_response(line)

  end

  def get_response(line)
    answer = ""
    if line.last == "?"
      answer = 'Silly question, get dressed and go to work'
    elsif line == "I am going to work"
      answer = "Great!"
    else
      answer =  "I don't care, get dressed and go to work"
    end
    return answer
  end
end
