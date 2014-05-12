class PlacesController < ApplicationController
  before_filter :authorize, :only => [:place]
def index
@places =Place.all
end

def search
@places= Place.find(:all, :conditions => ["Name LIKE ?", " #{params[:key]}"])
end

def show 
@place = Place.find(params[:id])
end

end
