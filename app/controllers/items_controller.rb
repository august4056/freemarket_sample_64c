class ItemsController < ApplicationController
  
  

  def index
    @item = Items.all
  end

  def show
    @items = Items.all

  end

  def new
  end
  
end