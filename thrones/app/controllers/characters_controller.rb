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
    if !current_user
      redirect_to houses_path
      flash[:alert] = "Sign in to create a house"
    else
      @house = House.find(params[:house_id])
      @character = @house.characters.create!(character_params.merge(user: current_user))
      redirect_to houses_path
    end
  end

  def edit
    @house = House.find(params[:house_id])
    @character= Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    if @character.user_id == current_user
      @character.update!(character_params)
      @character.save
    else
      flash[:alert] = "Only the creator of a character may edit it"
    end
      redirect_to house_character_path
  end

  def destroy
    @character = Character.find(params[:id])
    if @character.user.id == current_user.id
      @character.destroy
    else
      flash[:alert] = "Only the creator of a character may delete it"
    end
      redirect_to houses_path
  end

  private
  def character_params
    params.require(:character).permit(:name, :title, :img_url, :house_id)
  end

end
