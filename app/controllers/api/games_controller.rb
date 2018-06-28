class Api::GamesController < ApplicationController
  def name_action
    @name = params["name"]
    @other_message = params["some_key"]
    render "name_view.json.jbuilder"
  end

  def guess_number_action
    @message = "hello"
    render "guess_number_view.json.jbuilder"
    
  end

  def segment_param
    user_input = params["number"].to_i
    answer = 50
    if user_input == answer
      @message = "You win!"
    elsif user_input < answer
      @message = "Guess higher"
    else
      @message = "Guess lower"
    end
    render "segment_param.json.jbuilder"
  end
  # def first_letter_action
  #   @message = params["the name"].upcase
  #   if parms[0] == "a"
  #     p @message = "Hey, your name starts with the first letter of the alphabet!"
  #   else
  #   end
  #   render name.json.jbuilder
  # end

end
      
    
