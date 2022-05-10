class ActorsController < ApplicationController
  before_action :set_actor, only: %i[ show update destroy ]

  def index
    @actor = Actor.all
    render json: @actor
  end

  def show
   render json: @actor 
  end

  def create
    @actor = Actor.new(actor_params)

    if @actor.save
      render json: @actor, status: :created, location: @actor
    else
      render json: @actor.erros, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor
      @actor = Actor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def actor_params
      params.require(:actor).permit(:name)
    end
end
