class GamesController < ApplicationController

  def index
  @games = GiantBomb::Search.new().query(params[:query]).resources('game').limit(100).fetch
  end

  def show
  @game = GiantBomb::Game.detail(params[:id])
  end

  def create
  end

  def destroy
  end

end
