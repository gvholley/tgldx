class GamesController < ApplicationController

  def index
  @games = GiantBomb::Search.new().query(params[:query]).resources('game').limit(100).fetch
  end

  def show
  @game = GiantBomb::Game.detail(params[:id])
  end

  def create
    @library_game = Game.new(game_params)
    @library_game.fetch_data
    @library_game.save
    redirect_to library_path
  end

  def destroy
    @library_game = GiantBomb::Game.detail(params[:id])
    @library_game.destroy
    redirect_to library_path
  end

private

  def game_params
    params.require(:game).permit(:data)
  end

end
