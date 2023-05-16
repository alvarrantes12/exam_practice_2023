class ComediansController < ApplicationController
  before_action :set_comedian, only: %i[ show edit update destroy ]

  def index
    @comedians = Comedian.all
  end

  def show; end

  def new
    @comedian = Comedian.new
  end

  def edit; end

  def create
    @comedian = Comedian.new(comedian_params)

    if @comedian.save
      redirect_to comedian_url(@comedian), notice: t('activerecord.success.comedian.create')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @comedian.update(comedian_params)
      redirect_to comedian_url(@comedian), notice: t('activerecord.success.comedian.update')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @comedian.destroy

    redirect_to comedians_url, notice: t('activerecord.success.comedian.delete')
  end

  private
    def set_comedian
      @comedian = Comedian.find(params[:id])
    end

    def comedian_params
      params.require(:comedian).permit(:first_name, :last_name, :id_number, :level)
    end
end
