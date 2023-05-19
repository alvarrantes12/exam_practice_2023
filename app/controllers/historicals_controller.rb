class HistoricalsController < ApplicationController
  before_action :set_historical, only: %i[ show edit update destroy ]
  before_action :set_comedians
  before_action :set_contracts

  def index
    @historicals = Historical.all
  end

  def show; end

  def new
    @historical = Historical.new
  end

  def edit; end

  def create
    @historical = Historical.new(historical_params)

    if @historical.save
      redirect_to historical_url(@historical), notice: t('application.created')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @historical.update(historical_params)
      redirect_to historical_url(@historical), notice: t('application.updated')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @historical.destroy
    redirect_to historicals_url, notice: t('application.destroyed')
  end

  skip_before_action :verify_authenticity_token

  private
    def set_comedians
      @comedians = Comedian.all.map {|comedian| ["#{comedian.first_name} #{comedian.last_name}", comedian.id]}
    end

    def set_contracts
      @contracts = Contract.all.map {|contract| ["#{contract.location}", contract.id]}
    end

    def set_historical
      @historical = Historical.find(params[:id])
    end

    def historical_params
      params.require(:historical).permit(:version, :comedian_id, :contract_id)
    end
end
