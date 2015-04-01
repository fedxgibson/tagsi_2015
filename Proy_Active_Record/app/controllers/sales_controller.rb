class SalesController < ApplicationController
   def list
      @sales = Sale.all
   end
   
   def show
      @sale = Sale.find(params[:id])
   end
   
   def new
      @sale = Sale.new
      @clients=Client.all
      @products=Product.all
   end
   
   def create
      params.permit!
      @sale = Sale.new(params[:sale])
      if @sale.save
        redirect_to :action => 'list'
      else 
        redirect_to :action=>404
      end
   end
   
   def edit
     @clients=Client.all
     @products=Product.all
     @sale = Sale.find(params[:id])
   end
   
   def update
      params.permit!
      @sale = Sale.find(params[:id])
      if @sale.update_attributes(params[:sale])
         redirect_to :action => 'show', :id => @sale
      end
   end
   
   def delete
      Sale.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
end
