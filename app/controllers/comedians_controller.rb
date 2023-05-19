class ComediansController < ApplicationController
  before_action :set_comedian, only: %i[ show edit update destroy ]
  before_action :set_managers


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
      JokesService.new.build_joke
      redirect_to comedian_url(@comedian), notice: t("application.created")
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
      if @comedian.update(comedian_params)
        redirect_to comedian_url(@comedian), notice: t("application.updated") 
      else
        render :edit, status: :unprocessable_entity
      end
  end

  def destroy
    @comedian.destroy
    redirect_to comedians_url, notice: t("application.destroyed")
  end

  private
    def set_comedian
      @comedian = Comedian.find(params[:id])
    end

    def set_managers 
      @managers = Manager.all.map {|manager| ["#{manager.first_name} #{manager.last_name}", manager.id]}
    end

    def comedian_params
      params.require(:comedian).permit(:first_name, :last_name, :id_number, :level, :manager_id)
    end
end
