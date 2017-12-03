class ParamsExampleController < ApplicationController
  def query_line_parameter_method
    p "here is a param thing"
    the_message =  params["message"]
    other_message =  params["second_key"]
    p "here is a param thing"
    render json: {message: the_message, message2: other_message}
  end
end
