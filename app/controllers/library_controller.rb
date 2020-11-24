class LibraryController < ApplicationController

  def index
    @library_games = User.find(params[:id]).games
  end
end
