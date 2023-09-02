class PostsController < ApplicationController
  def post
    @posts = Post.all
  end
end
