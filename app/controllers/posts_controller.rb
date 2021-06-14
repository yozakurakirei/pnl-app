class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    @post.image.attach(params[:post][:image])
    @post.user_id = current_user.id
    @post.save
    redirect_to post_path(@post)
    flash[:info] = "投稿が完了しました"
  end

  def edit
  end

  private
    def post_params
      params.require(:post).permit(:title, :area, :name, :image, :content)
    end
end
