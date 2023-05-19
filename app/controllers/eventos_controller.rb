class EventosController < ApplicationController
  before_action :set_evento, only: %i[ show edit update destroy ]


  def index
    @eventos = Evento.all
  end

  
  def show
  end

  def new
    @evento = Evento.new
  end

 
  def edit; end

  
  def create
    @evento = Evento.new(evento_params)

      if @evento.save
        redirect_to evento_url(@evento), notice: "Evento was successfully created."
      else
        render :new, status: :unprocessable_entity 
      end
  end

  def update

      if @evento.update(evento_params)
        redirect_to evento_url(@evento), notice: "Evento was successfully updated." 
      else
        render :edit, status: :unprocessable_entity 
      end
  end

  def destroy
    @evento.destroy
      redirect_to eventos_url, notice: "Evento was successfully destroyed." 
  end

  def set_comedians
    @comedians = Comedian.all.map {|comedian| ["#{comedian.first_name} #{comedian.last_name} - #{comedian.id_number}", comedian.id]} 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evento
      @evento = Evento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evento_params
      params.require(:evento).permit(:name, :start_date, :end_date, :comedian_id)
    end
end
