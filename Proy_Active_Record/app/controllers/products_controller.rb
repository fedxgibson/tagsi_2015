class ProductsController < ApplicationController
   def list
      @products = Product.all
   end
   
   def show
      @product = Product.find(params[:id])
   end
   
   def new
      @product = Product.new
      @categories=Category.all
   end
   
   def create
      params.permit!
      @product = Product.new(params[:product])
      if @product.save
        redirect_to :action => 'list'
      else 
        redirect_to :action=>404
      end
   end
   
   def edit
      @categories= Category.all
      @product = Product.find(params[:id])
   end
   
   def update
      params.permit!
      @product = Product.find(params[:id])
      if @product.update_attributes(params[:product])
         redirect_to :action => 'show', :id => @product
      end
   end
   
   def delete
      Product.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
end
