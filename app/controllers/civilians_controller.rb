require 'uri'
require 'net/http'
class CiviliansController < ApplicationController




def index
  @civilians = Civilian.all
  respond_to do |format|
    format.html {render :index}
    format.json {
      render json: @civilians.to_json(:include => {:questions => {:include => :answer  }})
    }
  end
end

  def survey
  	@question = Question.new
  end

  def posting
		url = URI("http://4d3e59bb.ngrok.io/messages/send_sms")

		http = Net::HTTP.new(url.host, url.port)

		request = Net::HTTP::Post.new(url)
		request["content-type"] = 'application/x-www-form-urlencoded'
		request["cache-control"] = 'no-cache'
		request["postman-token"] = '62a5d7e8-df16-51ff-6713-389c2f1582cb'
		question = "body=" + params["question"]["text"]
		request.body = question
		
		response = http.request(request)
		

  end

end