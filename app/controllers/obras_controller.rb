class ObrasController < ApplicationController
  before_action :set_obra, only: %i[ show update destroy ]

  # GET /obras
  def index
    @obras = Obra.all

    render json: @obras
  end

  # GET /obras/1
  def show
    render json: @obra
  end

  # POST /obras
  def create
    @obra = Obra.new(obra_params)

    if @obra.save
      render json: @obra, status: :created, location: @obra
    else
      render json: @obra.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /obras/1
  def update
    if @obra.update(obra_params)
      render json: @obra
    else
      render json: @obra.errors, status: :unprocessable_entity
    end
  end

  # DELETE /obras/1
  def destroy
    @obra.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obra
      @obra = Obra.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def obra_params
      params.require(:obra).permit(:titulo, :editora, :foto)
    end
end
