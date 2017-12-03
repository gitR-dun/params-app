class ParamsExampleController < ApplicationController
  def query_line_parameter_method
    p "here is a param thing"
    the_message =  params["message"]
    other_message =  params["second_key"]
    p "here is a param thing"
    render json: {message: the_message, message2: other_message}
  end

  def name_game
    my_name = params["name"].downcase
    if my_name.starts_with?('a')
      my_message = "hey your name starts with the first letter of the alphabet"
    else
      my_message = "You are not cool"
    end
    render json: {name: my_name.upcase, message: my_message}
  end

  def number_game
    # answer = rand(100) + 1
    answer = 36
    user_input = params["guess"].to_i
    if user_input == answer
      my_message = "You win"
    elsif user_input > answer
      my_message = "You guessed too high"
    else
      my_message = "You guessed too low"

    end
    render json: {message: my_message}
  end
end
