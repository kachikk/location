class PlacesController < ApplicationController
def index
@places =Place.all
#@letter=(params[:word])
end
def search
@places= Place.where(:all, :conditions => ["place LIKE ?", "#{params[:key]}"])

end

end
