class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
    # @characters = Character.where(:house_id => @house.id)
  end

  def new
    @house = House.new
  end

  def create
    if !current_user
      redirect_to houses_path
      flash[:alert] = "Sign in to create a house"
    else
      @house = House.create!(update_params.merge(user: current_user))
      redirect_to houses_path
    end
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
      if @house.user_id == current_user
          @house.update(update_params)
        else
          flash[:alert] = "A house can only be edited by its creator"
        end
          redirect_to houses_path
  end

  def destroy
    @house = House.find(params[:id])
    if @house.user == current_user
      @house.destroy
    else
      flash[:alert] = "Only the creator of a house can delete it"
    end
      redirect_to houses_path
  end

  private
  def update_params
    params.require(:house).permit(:name, :castle, :banner_url)
  end


end
