class StoresController < ApplicationController
  before_action :set_store, only: [:edit, :update, :destroy]

  # GET /stores
  # GET /stores.json
  def index
    @stores = Store.all
  end

  # GET /stores/1
  # GET /stores/1.json
  def show
    @store = Store.find(params[:id])
  end

  # GET /stores/new
  def new
    @store = Store.new
  end

  # GET /stores/1/edit
  def edit
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to store_path(@store), notice: "store created."
    else
      render action: 'new'
    end
  end
  

  def update
    if @store.update(store_params)
        redirect_to store_path(@store), notice: "store updated."
    else
        render action: 'edit'
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @store.destroy
    redirect_to store_path, notice: "store destroyed."
  end
  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store
      @store = Store.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_params
      params.require(:store).permit(:name, :street, :city, :state, :zip, :phone, :active)
    end
end