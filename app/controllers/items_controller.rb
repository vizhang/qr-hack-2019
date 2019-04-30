class ItemsController < ApplicationController
  def index
    @items = Item.all.order(created_at: :desc)
    render 'items/index'
  end


  private
  def item_params
    params.require(:item).permit(:name, :description, :image)
  end

end
