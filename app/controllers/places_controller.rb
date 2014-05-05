class PlacesController < ApplicationController
def index
@places =Place.all
#@letter=(params[:word])
end
def search
@places= Place.find(:all, :conditions => ["name LIKE ?", " #{params[:key]}"])

end

end
