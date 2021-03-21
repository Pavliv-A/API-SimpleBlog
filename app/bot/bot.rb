require 'telegram/bot'
token = "1553480560:AAFgGv3KVV7zzY0blyYcxzoUb-iqJatA28U"
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
    end
  end
end

def find_post
  # дістаю з параметрів баді post_id і записує в змінну id_post
  id_post = params[:post_id]
  id_piz = params[:pizdate_id]
  # шукаю в базі пост з цією id
  # post = Post.find_by(id: id_post)
  # comments = post.comments
  # post_responce = post.slice(:title)
  #
  # all_posts = Post.where("id > ?", id_post)
  # all_posts = []
  # posts = Post.all
  #
  # posts.each do |post|
  #   all_posts << post.as_json.merge(comments: post.comments)
  # end
end

