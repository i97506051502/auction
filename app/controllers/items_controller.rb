class ItemsController < ApplicationController
  def show
  # def hoge
    @item = Item.find(params[:id])
  end
  def index
    @items = Item.all
  end
end
