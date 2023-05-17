class PostsController < ApplicationController

  def index
    @posts=Post.all
  end

  def show

    @post=Post.find(params[:id])
    # binding.break
  end

  def new
  end

  def create
    @post=Post.new(params.require(:post).permit(:title, :description))
    @post.save
    redirect_to (@post)
  end

end
