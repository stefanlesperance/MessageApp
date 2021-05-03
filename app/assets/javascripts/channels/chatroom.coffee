App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
  	#Below is the basic alert trigger.
  	#Next, we append so it shows up on the screen
  	# What the below does is take the id of the div message-container, which wraps my chatroom view partial, and then
  	# alerts it when new data is introduced, appending it.
    $('#message-container').append data.mod_message
