class ConversionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    
  end
  def convert
      result = params[:payload]
      c = Converter.new
      result[:amount] = c.get_conversion(result[:amount].to_f,result[:from_ticker],result[:to_ticker])
      render :json => result
  end
end
