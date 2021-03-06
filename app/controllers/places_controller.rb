class PlacesController < ApplicationController
  before_filter :authorize, :only => [:place]
  before_filter :authenticate_admin!, :only => [:edit]
  
def index
@places =Place.all

end

def search
@places= Place.find(:all, :conditions => ["Name LIKE ?", " #{params[:key]}"])
end

def show 
@place = Place.find(params[:id])
end
#load_and_authorize_resource
#skip_load_resource only: [:create]


def edit
@place = Place.find(params[:id])
end

def update
  @place = Place.find(params[:id])
  @place.update(place_params)

  redirect_to place_path(@place)
  
end


private
 def place_params
      params.require(:place).permit(:latitude, :longitude, :name, :address)
    end
end
