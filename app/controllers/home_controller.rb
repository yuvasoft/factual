class HomeController < ApplicationController
	require 'factual'
  def index  
        if params[:data]=="search" 
	  	factual = Factual.new("ZbZWd35dWdnpdtjvEYUXu820J0iivEwpEIU7wHDI", "CfAFBOAbM1s9hhVxhLR1brSnmNoOmYQOP9Aio5Ak")
	  	@factual=factual.table("places").select().filters({"locality" => params[:search]})
	  	#@factual=factual.table("places").select(:name, :website,:category_labels,:address).filters({"country" => "TH"})
    end
  end
  def show  	
  	
  end

  def search 	
  	
  end
end
