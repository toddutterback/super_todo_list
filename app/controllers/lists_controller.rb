class ListsController < ApplicationController
 before_action :list, only: [:show, :edit, :update, :delete]

  def index
      # Get - All People
      @lists = List.all
    end

  def show
    # Get - Show a specific person
    # @person = Person.find(params[:id])
  end

  def new
    # Get - Shows the form to create a person
    @list = List.new
  end

  def create
    #Post - create a new person in the database
    @list = List.create(list_params)
    redirect_to lists_path
  end

  def edit
    #Get - Show the person form with values filled out
    # @person = Person.find(params[:id])
    redirect_to lists_path
  end

  def update
    #Put - Update record in database
    # @person = Person.find(params[:id])
    @list.update(list_params)
    redirect_to list_path(@list)
  end

  def destroy
    #DELETE - destroy record from database
    # @person = Person.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  def destroy_all
    List.destroy_all
    redirect_to lists_path
  end

  private 
  
    def list_params
      params.require(:list).permit(:title, :priority)
    end

    def person
      @list = List.find(params[:id])
    end


end