class GamesController < NoRootController

  def index
    games = Game.all
    render json: games, response: 200
  end

end
