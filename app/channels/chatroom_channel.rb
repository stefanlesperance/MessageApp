class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    #Connect and establish a connection with this channel
     stream_from "chatroom_channel"

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
