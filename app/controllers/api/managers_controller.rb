module Api
  class ManagersController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_manager, only: %i[ show edit update destroy ]

    def index
      @managers = Manager.all
    end

    def show; end

    def new
      @manager = Manager.new
    end

    def edit; end

    def create
      @manager = Manager.new(manager_params)

      if @manager.save
        render 'api/managers/show', status: :created
      else
        render json: @manager.errors, status: :unprocessable_entity 
      end
    end

    def update
      if @manager.update(manager_params)
        render 'api/managers/show', status: :ok
      else
        render json: @manager.errors, status: :unprocessable_entity 
      end
    end

    def destroy
      @manager.destroy
      render 'api/managers/show', status: :ok
    end

    private

      def set_manager
        @manager = Manager.find(params[:id])
      end

      def manager_params
        params.require(:manager).permit(:first_name, :last_name)
      end
  end
end