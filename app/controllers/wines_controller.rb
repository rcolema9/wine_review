class WinesController < ApplicationController

  before_action :set_wine, only: [ :show, :edit, :update, :destroy ]

  def index
    @available_at = Time.now
    @wines = Wine.all
    # Previously in Class 8 labs was an array
    #@wines = ["Beringer Chardonnay", "Veramar Rooster Red", "Mondavi Cabernet Sauvignon", "Kendall Jackson Sauvignon", "Luc Pirlet Merlot", "Mallee Point Shiraz"]
   end

   def show
     #Removed when adding "Drying Out" code
     #@wine = Wine.find(params[:id])
   end

  def new
  	@wine = Wine.new
  end

  def create
  	@wine = Wine.new(wine_params)
  	@wine.save
  	redirect_to @wine
  end

  def edit
	#Removed when adding "Drying Out" code
	#@wine = Wine.find(params[:id])
  end

  def update
    #Removed when adding "Drying Out" code
    #@wine = Wine.find(params[:id])
    @wine.update(wine_params)
    redirect_to @wine
  end

  def destroy
  	#Removed when adding "Drying Out" code
  	#@wine = Wine.find(params[:id])
  	@wine.destroy
  	redirect_to wines_url
  end

  private

  def wine_params
    params.require(:wine).permit(:name, :year, :winery, :country, :varietal)
  end

  def set_wine
  	@wine = Wine.find(params[:id])
  end

end