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
        redirect_to event_url(@event), notice: t('application.crud_message.male.create_message_model', model: t('activerecord.modules.event.one'))
      else
        render :new, status: :unprocessable_entity 
      end
  end

  def update
      if @event.update(event_params)
        redirect_to event_url(@event), notice: t('application.crud_message.male.update_message_model', model: t('activerecord.modules.event.one'))
      else
        render :edit, status: :unprocessable_entity 
      end
  end

  def destroy
    @event.destroy

    redirect_to events_url, notice: t('application.crud_message.male.delete_message_model', model: t('activerecord.modules.event.one'))
  end

  private

    def set_comedians
      @comedians = Comedian.all.map {|comedian| ["#{comedian.first_name} #{comedian.last_name} - #{comedian.id_number}", comedian.id]}
    end 

    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :comedian_id)
    end
end
