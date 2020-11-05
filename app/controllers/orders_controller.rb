class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders = Order.where(user_id: current_user.id, paid: false)
  end
  def create
    libro = Libro.find(params[:libro_id])
    order = Order.find_or_create_by(user_id: current_user.id, libro_id: libro.id, paid: false)
    order.quantity += 1
  end
  
end
