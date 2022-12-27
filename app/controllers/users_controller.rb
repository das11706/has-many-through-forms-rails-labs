class UsersController < ApplicationController

  # def create
  #   @user = User.new(user_params)

  #   if @user.save
  #     redirect to @user
  #   else
  #     render :new
  #   end
  # end

  def show
    @user = User.find(params[:id])
  end

  # private
  #   def user_params
  #     params.require(:user).permit(:username, :email)
  #   end

    # def post_params
    #   params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name], user_id:[], user_attributes: [:username], comment_ids:[], comments_attributes: [:comment_content])
    # end

end
