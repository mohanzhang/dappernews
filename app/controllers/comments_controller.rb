class CommentsController < ApplicationController
  before_filter :require_item

  def index
    # we allow the creation of a new comment right from the comment listing
    @comment = Comment.new
  end

  def create
    @comment = @item.comments.build(comment_params)
    if @comment.save
      redirect_to :action => :index
    else
      render :index
    end
  end

  protected

  def require_item
    @item = Item.find(params[:item_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:username, :content)
  end
end
