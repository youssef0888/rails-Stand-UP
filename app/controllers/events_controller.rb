class EventsController < ApplicationController
before_action :set_event, only: [:show, :create, :edit]
  def index
    @events = Event.all
    if params[:query].present?
      @events = @events.where("name ILIKE ?", "%#{params[:query]}%")
    end
    if params[:establishment_id].present?
      @events = @events.where("establishment_id = ?", "#{params[:establishment_id]}")
    end
    if params[:comedian_id].present?
      @events = @events.where("comedian_id = ?", "#{params[:comedian_id]}")
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
