class MessagesController < ApplicationController 
 skip_before_filter :verify_authenticity_token
 before_action :boot_twilio
 
  def reply
    message_body = params["Body"]
    from_number = params["From"]
    civilian = Civilian.find_or_create_by(phone: from_number)
    civilian.update(address: message_body) 
    boot_twilio
    sms = @client.messages.create(
      from: "+16466811567",
      to: from_number,
      body: "Hello there, thanks for texting me. Your address is #{message_body}."
    )
  end

  def send_sms
    from = "+16466811567"

    message = params["body"]

    Civilian.all.each do |civilian|
      @client.account.messages.create(
        :from => from,
        :to => civilian.phone,
        :body => message
      )
      puts "Sent message to #{civilian.phone}"
    end
  end
  private
 
  def boot_twilio
    account_sid = 'AC9c544d285f67150f64c29e0d81fe2486'
    auth_token = '561193b3f3542f9c0e6986e795e39dd7'
    @client = Twilio::REST::Client.new account_sid, auth_token
  end
end
