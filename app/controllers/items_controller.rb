class ItemsController < ApplicationController

  def show
  # def hoge
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    # form からデータを受け取る
    # @item = Item.new(params[:item])
    @item = Item.new(item_params)
    # 保存する
    @item.save
    # show.html.erb にリダイレクトさせる
    redirect_to "/items/#{@item.id}"
  end

  def edit
    # http://localhost:3000/items/5/edit
    # 上記 URL の 5 を取得して @item = Item.find(5)
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update_attributes(item_params)
    redirect_to "/items/#{@item.id}"
  end

  private

  def item_params
    # params.require(:key).permit(:filter)
    params.require(:item).permit(
      :name,
      :description,
      :price,
      :seller_id,
      :email,
      :image_url
    )
  end

end
