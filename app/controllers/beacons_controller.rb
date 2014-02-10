class BeaconsController < ApplicationController
  def index
    @beacon=Beacon.all
  end

  def new
  
  end

  def create
    @beacon=Beacon.new(post_params)
    @beacon.save
    redirect_to @beacon
  end
	
  def show
    @beacon=Beacon.find(params[:id])
  end

 private
  def post_params
    params.require(:beacon).permit(:sid,:loc)
  end
end
