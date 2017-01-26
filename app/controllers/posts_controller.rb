class PostsController < ApplicationController

  def new

  end

  def all
    @posts = Post.all
  end

  def single
      @post = Post.find params[:id]
  end

  def create
      Post.create(
          title: params[:title],
          body:  params[:body]
      )
      redirect_to '/'
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]
    @post.update(
        title: params[:title],
        body:  params[:body]
    )
    redirect_to "/posts/#{params[:id]}"
  end

  def favorite
    post = Post.find params[:id]
    current_user.add_favorite post

    redirect_to "/dashboard"
  end


  def dashboard
    @favorites = []
    dashboard = Post.all
    dashboard.each do |i|
      if i.is_favorited?(current_user.id)
        @favorites.push i
      end
    end
  end
end