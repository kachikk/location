class PlacesController < ApplicationController
  before_filter :authorize, :only => [:place]
def index
@places =Place.all
end

def search
@places= Place.find(:all, :conditions => ["Name LIKE ?", " #{params[:key]}"])

end

end
