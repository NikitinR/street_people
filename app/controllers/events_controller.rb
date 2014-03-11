class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
  	@event = Event.find(params[:id])
  end	

  def archive
  	@events = Event.all
  end	
end
