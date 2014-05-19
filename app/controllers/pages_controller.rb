class PagesController < ApplicationController
  def home
  if user_signed_in?
    redirect_to :controller=>'places', :action => 'index'
  end
  if admin_signed_in?
    redirect_to :controller=>'places', :action => 'index'
  end
  end
  
  def about
  end
end
