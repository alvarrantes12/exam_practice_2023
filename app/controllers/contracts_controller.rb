class ContractsController < ApplicationController
  before_action :set_contract, only: %i[ show edit update destroy ]


  def index
    @contracts = Contract.all
  end


  def show
  end


  def new
    @contract = Contract.new
  end

  def edit
  end


  def create
    @contract = Contract.new(contract_params)


      if @contract.save
        redirect_to contract_url(@contract), notice: "Contract was successfully created." 
      else
        render :new, status: :unprocessable_entity 
      end
  end


  def update

      if @contract.update(contract_params)
        redirect_to contract_url(@contract), notice: "Contract was successfully updated." 
      else
        render :edit, status: :unprocessable_entity 
      end

  end


  def destroy
    @contract.destroy

      redirect_to contracts_url, notice: "Contract was successfully destroyed." 
  end

  private

    def set_contract
      @contract = Contract.find(params[:id])
    end


    def contract_params
      params.require(:contract).permit(:location)
    end
end
