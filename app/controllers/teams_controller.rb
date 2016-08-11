class TeamsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_team, only: [:show, :edit, :update]


  def index
  	@teams = Team.all
  end

  def show
  end

  def new
  	@team = Team.new
  end

  def edit
  end

  def update
  	if @team.update(team_params)
  		redirect_to team_path(@team), notice: 'You did it'
  	else
  		redirect_to edit_team_path(@team), notice: 'NO!!!!!!!!!!'
  	end
  end

  def create
  	@team = Team.new(team_params)
  	@team.creator = current_user
  	if @team.save 
  		redirect_to team_path(@team), notice: 'Yay!'
  	else
  		redirect_to new_team_path, notice: 'Sorry'
  	end
  end
	private

	 def set_team
	 	@team = Team.find(params[:id])
	 end

	 def team_params
 	 params.require(:team).permit(:name, :visibility)
 	 end

end