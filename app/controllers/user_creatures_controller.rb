class UserCreaturesController < ApplicationController

before_filter :authenticate_user!, except: [:index, :show]

  def new
    @user_creature = UserCreature.new
    render :template => "user_creatures/new"
  end

  def create
    @user_creature = UserCreature.new(user_creature_params)
    @user_creature.user = current_user
    if @user_creature.save
      redirect_to games_path
    else
      render :template => "user_creatures/new"
    end
  end

  def edit
    @user_creature = UserCreature.find(params[:id])
    render :template => "user_creatures/edit"
  end

  def update
    @user_creature = UserCreature.find(params[:id])
    @user_creature.user = current_user
    if @user_creature.update(user_creature_params)
      redirect_to games_path
    else
      render :template => "user_creatures/edit"
    end
  end

  def destroy
    user_creature.find(params[:id]).destroy!
    redirect_to games_path
  end

  def show
    @user_creature = UserCreature.find(params[:id])
    render :template => "user_creatures/show"
  end
  
  def user_creature_params
    params.require(:user_creature).permit!
  end
end
