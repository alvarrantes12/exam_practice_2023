class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]
  before_action :set_comedians

  def index
    @events = Event.all
  end

  def show; end

  def new
    @event = Event.new
  end

  def edit; end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to event_url(@event), notice: t("application.created") 
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def update
      if @event.update(event_params)
        redirect_to event_url(@event), notice: t("application.updated") 
      else
        render :edit, status: :unprocessable_entity 
      end
  end

  def destroy
    @event.destroy
    redirect_to events_url, notice: t("application.destroyed")
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def set_comedians
      @comedians = Comedian.all.map {|comedian| ["#{comedian.first_name} #{comedian.last_name}", comedian.id]}
    end

    def event_params
      params.require(:event).permit(:name, :comedian_id)
    end
end
