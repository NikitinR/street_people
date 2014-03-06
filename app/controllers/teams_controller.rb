class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end



  private
  def team_params
    params.require(:team).permit(:name, :info, :photo)
  end


end
