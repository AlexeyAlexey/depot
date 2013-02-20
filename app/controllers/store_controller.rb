class StoreController < ApplicationController
  def index
  
     @products = Product.order(:title)
	 
	 if session[:counter].nil?
	     then session[:counter] = 1
		 else session[:counter] += 1
	  end
  
  end
end
