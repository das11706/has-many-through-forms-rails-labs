class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    # @post.build_user
  end
 
  def create
    # raise params.inspect
    post = Post.create(post_params)
    redirect_to post
  end

  private

  # def post_params
  #   params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name], user_id:[], user_attributes: [:username, :email], comment_ids:[], comments_attributes: [:comment_content])
  # end

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
