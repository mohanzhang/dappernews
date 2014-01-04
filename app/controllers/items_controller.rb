class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to :action => :index
    else
      render :new
    end
  end

  def upvote
    @item = Item.find(params[:id])
    @item.upvote!
  end

  private

  def item_params
    params.require(:item).permit(:title, :url, :username)
  end
end
