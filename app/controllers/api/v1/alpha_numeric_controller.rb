class Api::V1::AlphaNumericController < ApplicationController

	Alpha = ("a".."z").to_a

  def alpha_to_number
  	str = params[:string]
  	render status: 400, :json=>{:status_code => 4039, :message => "Provide Alphabetic Characters to convert"} and return if str.blank?
    result = 0
    length = str.size
    str = str.downcase
    (1..length).each do |i|
      char = str[-i]
      result += 26**(i-1) * (Alpha.index(char)+1)
    end
    
    render status:200, :json=> result and return 
  end
  rescue Exception => e
    render status: 400, :json=>{:status_code => 4039, :message => e.message} and return
end