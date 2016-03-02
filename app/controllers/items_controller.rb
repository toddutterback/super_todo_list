class ItemsController < ApplicationController
before_action :item, only: [:show, :edit, :update, :delete]

  def index
      # Get - All People
      @items = Item.all
    end

  def show
    # Get - Show a specific person
    # @person = Person.find(params[:id])
  end

  def new
    # Get - Shows the form to create a person
    @item = Item.new
  end

  def create
    #Post - create a new person in the database
    @item = Item.create(item_params)
    redirect_to items_path
  end

  def edit
    #Get - Show the person form with values filled out
    # @person = Person.find(params[:id])
    redirect_to items_path
  end

  def update
    #Put - Update record in database
    # @person = Person.find(params[:id])
    @item.update(item_params)
    redirect_to list_path(@list)
  end

  def destroy
    #DELETE - destroy record from database
    # @person = Person.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  def destroy_all
    Item.destroy_all
    redirect_to items_path
  end

  private 
    
    def item_params
      params.require(:item).permit(:title, :priority, :complete)
    end

    def person
      @item = Item.find(params[:id])
    end


end
