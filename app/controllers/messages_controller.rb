class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new # needed to instantiate the form_for
  end

  def create
    @message = Message.new(message_params)
    @message.save
    # no need for app/views/messages/create.html.erb
    #strong params must be added below
    redirect_to messages_path(@messages)
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    # no need for app/views/messages/destroy.html.erb
    redirect_to messages_path
  end
end
