class GamesController < ApplicationController

  before_filter :authenticate_user!, :except => [:index]
  
  def index
    @games = Game.all
    render(:template => "games/index")
  end

  def new
    @game = Game.new
    render(:template => "games/new")
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
      redirect_to games_path
    else
      render(:template => "games/index")
    end
  end

  def edit
    @game = Game.find(params[:id])
    render :template => "games/edit"
  end

  def update
    @game = Game.find(params[:id])
    @game.user = current_user
    if @game.update(game_params)
      redirect_to games_path
    else
      render :template => "games/edit"
    end
  end

  def game_params
    params.require(:game).permit!
  end

  #def show
  #  @games = Game.all
  #  render :template => "games/show"
  #end

end
