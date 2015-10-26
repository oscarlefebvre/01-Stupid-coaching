class CoachingsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    @coach = coach_answer_enhanced(@query)
  end

  def coach_answer(your_message)
    if your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
    # TODO: return coach answer to your_message
   end

   def coach_answer_enhanced(your_message)
    if your_message == "I AM GOING TO WORK RIGHT NOW!"
      return ""
    elsif your_message == your_message.upcase
       return coach_answer(your_message).prepend("I can feel your motivation! ")
    else
       return coach_answer(your_message)
    end
    # TODO: return coach answer to your_message, with additional custom rules of yours!
   end
  # TODO: return coach answer to your_message, with additional custom rules of yours!
end

