class EventsController < ApplicationController
  def index
    @events = Event.all.order(created_at: :asc).last(3)
  end

  def show
  	@event = Event.find(params[:id])
  end	

  def archive
  	@events = Event.all
  end

  private
  def event_params
    params.require(:event).permit(:name, :description, :image)
  end

end
