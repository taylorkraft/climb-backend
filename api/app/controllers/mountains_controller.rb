class MountainsController < ApplicationController
  before_action :set_mountain, only: [:show, :update, :destroy]

  # GET /mountains
  def index
    @mountains = Mountain.all

    render json: @mountains
  end

  # GET /mountains/1
  def show
    render json: @mountain
  end

  # POST /mountains
  def create
    @mountain = Mountain.new(mountain_params)

    if @mountain.save
      render json: @mountain, status: :created, location: @mountain
    else
      render json: @mountain.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mountains/1
  def update
    if @mountain.update(mountain_params)
      render json: @mountain
    else
      render json: @mountain.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mountains/1
  def destroy
    @mountain.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mountain
      @mountain = Mountain.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mountain_params
      params.require(:mountain).permit(:name, :elevation)
    end
end
