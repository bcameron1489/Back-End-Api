class FantasyPlayersController < ProtectedController
  before_action :set_fantasy_player, only: [:show, :update, :destroy]

  # GET /fantasy_players
  def index
    @fantasy_players = current_user.fantasy_players.all

    render json: @fantasy_players
  end

  # GET /fantasy_players/1
  def show
    render json: @fantasy_player
  end

  # POST /fantasy_players
  def create
    @fantasy_player = current_user.fantasy_players.build(fantasy_player_params)

    if @fantasy_player.save
      render json: @fantasy_player, status: :created, location: @fantasy_player
    else
      render json: @fantasy_player.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fantasy_players/1
  def update
    if @fantasy_player.update(fantasy_player_params)
      render json: @fantasy_player
    else
      render json: @fantasy_player.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fantasy_players/1
  def destroy
    @fantasy_player.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fantasy_player
      @fantasy_player = current_user.fantasy_players.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fantasy_player_params
      params.require(:fantasy_player).permit(:target, :player_id)
    end
end
