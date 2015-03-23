class UserPlayingCreaturesController < ApplicationController

before_filter :authenticate_user!, except: [:index, :show]

  def new
    @user_playing_creature = UserPlayingCreature.new
    @user_creatures = current_user.user_creatures
    render :template => "user_playing_creatures/new"
  end

  def create
    @user_playing_creature = UserPlayingCreature.new(user_playing_creature_params)
    @user_creatures = current_user.user_creatures
    @user_playing_creature.user = current_user
    if @user_playing_creature.save
      redirect_to games_path
    else
      render :template => "user_playing_creatures/new"
    end
  end

  def edit
    @user_playing_creature = UserPlayingCreature.find(params[:id])
    render :template => "user_playing_creatures/edit"
  end

  def update
    @user_playing_creature = UserPlayingCreature.find(params[:id])
    @user_playing_creature.user = current_user
    if @user_playing_creature.update(user_playing_creature_params)
      redirect_to games_path
    else
      render :template => "user_playing_creatures/edit"
    end
  end

  def destroy
    user_playing_creature.find(params[:id]).destroy!
    redirect_to games_path
  end

  def show
    @user_playing_creature = UserPlayingCreature.find(params[:id])
    render :template => "user_playing_creatures/show"
  end
  
  def user_playing_creature_params
    params.require(:user_playing_creature).permit!
  end
end
