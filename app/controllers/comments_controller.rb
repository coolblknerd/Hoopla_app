class CommentsController < ApplicationController
  before_action :find_post
  
  def index
  end
  
  def create
    @comment = @post.comments.create(comment_params)
    
    redirect_to @post
  end
  
  def destroy
    @comment = @post.comments.destroy
    
    redirect_to @post
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:comment)
  end
  
  def find_post
    @post = Post.find(params[:post_id])
  end
end
