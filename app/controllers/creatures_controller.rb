class CreaturesController < ApplicationController

  def index
    render :index
  end

  def creatures
  	@creatures = Creatures.all
    render :creatures
  end

  def new
    render :new
  end

  def create
    creature = params.require(:creature).permit(:name, :animal_type, :color, :size, :description)
    new_creature = Creatures.create(creature)  
    redirect_to "/creatures/#{new_creature.id}"
  end

  def show
    id = params[:id]
    @creature = Creatures.find(id)
    render :show
  end

  def edit
    id = params[:id]
    @creature = Creatures.find(id)
    render :edit
  end

  def update
   id = params[:id]
   creature = Creatures.find(id)

   updated_info = params.require(:creature).permit(:name, :animal_type, :color, :size, :description)
   creature.update_attributes(updated_info)

   redirect_to "/creatures/#{creature.id}"
  end


end