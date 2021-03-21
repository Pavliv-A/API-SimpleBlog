class FindController < ApplicationController
  def find_post
    id_post = params[:post_id]
    post = Post.find_by(id: id_post)
      render json: {posts: post.as_json, go: "smoke"}, status: 200
  end

  def all_posts
    all_posts = []
    posts = Post.all

    posts.each do |post|
      all_posts << post.as_json.merge(comments: post.comments)
    end

    render json: {posts: all_posts}, status: 200
  end
end
