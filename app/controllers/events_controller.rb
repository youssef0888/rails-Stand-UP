class EventsController < ApplicationController
before_action :set_event, only: [:show, :create, :edit]
  def index
    @events = Event.all
    if params[:query].present?
      @events = @events.where("name ILIKE ?", "%#{params[:query]}%")
    end
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def new 
    @event = Event.new
  end
  
  def create
  end
end
