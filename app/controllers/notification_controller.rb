class NotificationController < ApplicationController
  require 'net/http'
  def send_push
    id_post = params[:post_id]
    post = Post.find_by(id: id_post)
    post_responce = post.slice(:id, :title, :body)

    uri = URI("https://api.telegram.org/")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    url = 'https://api.telegram.org/bot1553480560:AAFgGv3KVV7zzY0blyYcxzoUb-iqJatA28U/sendMessage?chat_id=365064531&text='
    req = Net::HTTP::Post.new(url + post_responce.to_s)
    response = http.request(req)
    render json: {response: response}, status: 200
  end
end
