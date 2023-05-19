class RecordsController < ApplicationController
  before_action :set_record, only: %i[ show edit update destroy ]

  def index
    @records = Record.all
  end

  def show
  end

  def new
    @record = Record.new
  end


  def edit
  end


  def create
    @record = Record.new(record_params)

      if @record.save
        redirect_to record_url(@record), notice: "Record was successfully created."  
      else
        render :new, status: :unprocessable_entity 
      end
  end

  def update

      if @record.update(record_params)
        redirect_to record_url(@record), notice: "Record was successfully updated." 
      else
        render :edit, status: :unprocessable_entity 
      end
  end

  def destroy
    @record.destroy

      redirect_to records_url, notice: "Record was successfully destroyed." 
  end

  def set_comedians
    @comedians = Comedian.all.map {|conmedian| ["#{comedian.first_name} #{comedian.last_name} - #{comedian.id_number}", doctor.id]}
  end

  def set_contracts
    @contract = Contract.all.map {|patient|["#{contract.location}", contract.id]}
  end

  private

    def set_record
      @record = Record.find(params[:id])
    end

    def record_params
      params.require(:record).permit(:version, :comedian_id, :contract_id)
    end
end
