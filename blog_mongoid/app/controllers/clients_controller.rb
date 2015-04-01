class ClientsController < ApplicationController
   
   def list
      @clients = Client.all
   end
   
   def show
      @client = Client.find(params[:id])
   end
   
   def new
      @client = Client.new
   end
   
   def create
      params.permit!
      @client = Client.new(params[:client])
      if @client.save
            redirect_to :action => 'list'
      else
          redirect_to :action => 404
      end
   end
   def edit
      @client = Client.find(params[:id])
   end
   
   def update
      params.permit!
      @client = Client.find(params[:id])
      if @client.update_attributes(params[:client])
         redirect_to :action => 'show', :id => @client
      end
   end
   
   def delete
      Client.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
end
