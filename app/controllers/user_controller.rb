class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def games
    @game = GiantBomb::Game.detail(params[:id])
  end
end
