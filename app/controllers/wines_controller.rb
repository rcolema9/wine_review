class WinesController < ApplicationController

  def index
    @available_at = Time.now
    @wines = Wine.all
    # Previously in Class 8 labs was an array
    #@wines = ["Beringer Chardonnay", "Veramar Rooster Red", "Mondavi Cabernet Sauvignon", "Kendall Jackson Sauvignon", "Luc Pirlet Merlot", "Mallee Point Shiraz"]
   end

   def show
     @wine = Wine.find(params[:id])
   end
end