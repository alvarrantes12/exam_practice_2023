class ComediansController < ApplicationController
  before_action :set_comedian, only: %i[ show edit update destroy ]

  # GET /comedians or /comedians.json
  def index
    @comedians = Comedian.all
  end

  # GET /comedians/1 or /comedians/1.json
  def show
  end

  # GET /comedians/new
  def new
    @comedian = Comedian.new
  end

  # GET /comedians/1/edit
  def edit
  end

  # POST /comedians or /comedians.json
  def create
    @comedian = Comedian.new(comedian_params)

    respond_to do |format|
      if @comedian.save
        format.html { redirect_to comedian_url(@comedian), notice: "Comedian was successfully created." }
        format.json { render :show, status: :created, location: @comedian }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comedian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comedians/1 or /comedians/1.json
  def update
    respond_to do |format|
      if @comedian.update(comedian_params)
        format.html { redirect_to comedian_url(@comedian), notice: "Comedian was successfully updated." }
        format.json { render :show, status: :ok, location: @comedian }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comedian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comedians/1 or /comedians/1.json
  def destroy
    @comedian.destroy

    respond_to do |format|
      format.html { redirect_to comedians_url, notice: "Comedian was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comedian
      @comedian = Comedian.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comedian_params
      params.require(:comedian).permit(:first_name, :last_name, :id_number)
    end
end
