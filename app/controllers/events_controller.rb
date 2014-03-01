class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def all
    @events = Event.all
  end
end
