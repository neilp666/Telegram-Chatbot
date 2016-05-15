require 'telegram/bot'
token = 'YOUR API KEY'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "I am a chatbot, My commands are /neil /map  so type /neil or /map")
    when '/neil'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello!  my name is Neil My Website is www.neilpatel.co")
    when '/map'
      bot.api.send_location(chat_id: message.chat.id, latitude: 53.765762, longitude: -2.692337)
    end
  end
end
