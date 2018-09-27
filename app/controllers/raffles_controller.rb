class RafflesController < ApplicationController
  before_action :authenticate_user!
  skip_authorization_check
  def create
    @product = Product.find(params[:product_id])
    @raffle = Raffle.new(product: @product, user: current_user)
      if @raffle.save
        redirect_to products_path, notice: 'Rifa añadida al carro de compras'
      else
        redirect_to products_path, alert: 'Tu rifa no ha sido añadida al carro de compras'
      end
  end

  def index
    @raffles = current_user.raffles
  end

  def destroy
    @raffle = Raffle.find(params[:id])
    @raffle.destroy
    redirect_to raffles_path
  end

end
