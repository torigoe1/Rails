class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    @post = Post.new(title: params[:title],
                     start: params[:start],
                     end: params[:end],
                     all: params[:all],
                     memo: params[:memo]) 
    @post.save
    redirect_to("/posts")
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
