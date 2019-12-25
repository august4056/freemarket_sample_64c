class UsersController < ApplicationController

  layout "users"
  
  def new
  end

  def info
  end

  def registration
  end

  def login
  end
  def confirm
  end

  def address
  end

  def payment
  end

  def complete
  end  

  def item_confirm
    render :layout  => "application"
  end

end
