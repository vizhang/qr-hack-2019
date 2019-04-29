class StoresController < ApplicationController
  def index
    @store = Store.find(params[:id])
    if @store
      puts "inspecting store"
      puts @store.inspect
      
      render 'stores/index'
    else
      render json: { success: false }, status: :not_found
    end
  end
end
