class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      MessageMailer.contact_message(@message).deliver
      redirect_to root_url, notice: "Message sent! Thank you for contacting me, #{@message.name}, I'll get back to you shortly."
        else
      render "new"

    end
  end
end      