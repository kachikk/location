class PlacesController < ApplicationController
  before_action :authenticate_user!
def index
@places =Place.all
end

def search
@places= Place.find(:all, :conditions => ["Name LIKE ?", "#{params[:key]}"])

end

end
