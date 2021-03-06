class GamesController < ApplicationController

  def index
  @games = GiantBomb::Search.new().query(params[:query]).resources('game').limit(100).fetch
  end

  def show
  @game = GiantBomb::Game.detail(params[:id])
  end

  def create
    @library_game = Game.new
    @library_game.game_id = params[:game_id]
    @library_game.fetch_data
    @library_game.save!
    current_user.build_library
    current_user.library.games << @library_game
    flash[:notice] = "Added to library!"
    redirect_to library_path
  end

  def destroy
    current_user.games.find(params[:id]).destroy
    flash[:notice] = "Removed from library!"
    redirect_to library_path(current_user)
  end

private

  #def game_params
  #  params.require(:game).permit(:data)
  #end

  #def get_game_id
  #  params.require(:game)['id']
  #end

end
