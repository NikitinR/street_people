class EventsController < ApplicationController
  def index
    @event = Event.last
  end

  def show
  	@event = Event.find(params[:id])
  end	

  def archive
  	@events = Event.all
  end	
end
