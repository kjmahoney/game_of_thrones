class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def show
    @house = House.find(params[:house_id])
    @character = Character.find(params[:id])
  end

  def new
    @house = House.find(params[:house_id])
    @character = Character.new
  end

  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create(character_params)
    redirect_to house_path(@house)
  end

  def edit
    @house = House.find(params[:house_id])
    @character= Character.find(params[:id])
  end

  def update
  @character = Character.find(params[:id])
  @character.update(character_params)
  redirect_to house_character_path
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to houses_path
  end

  private
  def character_params
    params.require(:character).permit(:name, :title, :img_url, :house_id)
  end

end
