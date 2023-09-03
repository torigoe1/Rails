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
    if @post.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to("/posts")
    else
      redirect_to("/posts/new")
    end
  end

  def show
    @post = Post.find_by(id:params[:id])
  end

  def edit
    @post = Post.find_by(id:params[:id])
  end

  def update
    @post = Post.find_by(id:params[:id])
    @post.title = params[:title]
    @post.start = params[:start]
    @post.end = params[:end]
    @post.all = params[:all]
    @post.memo = params[:memo]
    if @post.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to("/posts")
    else
      flash[:notice] = "スケジュール登録に失敗しました"
      redirect_to("/posts/#{@post.id}/edit")
    end
  end

  def destroy
    @post = Post.find_by(id:paramd[:id])
    @post.destroy
    redirect_to("/posts")
  end
end
