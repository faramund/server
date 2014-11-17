class MonumentsController < ApplicationController
  before_action :set_monument, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  respond_to :html

  def index
    @monuments = Monument.all
    respond_with(@monuments)
  end

  def show
    respond_with(@monument)
  end

  def new
    @monument = Monument.new
    respond_with(@monument)
  end

  def edit
  end

  def create
    @monument = Monument.new(monument_params)
    @monument.save
    respond_with(@monument)
  end

  def update
    @monument.update(monument_params)
    respond_with(@monument)
  end

  def destroy
    @monument.destroy
    respond_with(@monument)
  end

  private
    def set_monument
      @monument = Monument.find(params[:id])
    end

    def monument_params
      params.require(:monument).permit(:name, :description, :locality, :latitude, :longitude)
    end
end
