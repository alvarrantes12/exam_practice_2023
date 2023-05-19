class HistoriesController < ApplicationController
  before_action :set_history, only: %i[ show edit update destroy ]
  before_action :set_comedians
  before_action :set_contracts

  def index
    @histories = History.all
  end

  def show; end

  def new
    @history = History.new
  end

  def edit; end

  def create
    @history = History.new(history_params)

    if @history.save
      redirect_to history_url(@history), notice: t('application.create_message', model: t('activerecord.modules.history.one'))
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @history.update(history_params)
      redirect_to history_url(@history), notice: t('application.create_message', model: t('activerecord.modules.history.one'))
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @history.destroy

    redirect_to histories_url, notice: t('application.create_message', model: t('activerecord.modules.history.one'))
  end

  private
    def set_comedians
      @comedians = Comedian.all.map {|comedian| ["#{comedian.first_name} #{comedian.last_name} - #{comedian.id_number}", comedian.id]}
    end 

    def set_contracts
      @contracts = Contract.all.map {|contract| ["#{contract.location}", contract.id]}
    end

    def set_history
      @history = History.find(params[:id])
    end

    def history_params
      params.require(:history).permit(:version, :comedian_id, :contract_id)
    end
end
