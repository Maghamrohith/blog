class AuothersController < ApplicationController
  before_action :set_auother, only: [:show, :edit, :update, :destroy]

  # GET /auothers
  # GET /auothers.json
  def index
    @auothers = Auother.all
  end

  # GET /auothers/1
  # GET /auothers/1.json
  def show
  end

  # GET /auothers/new
  def new
    @auother = Auother.new
  end

  # GET /auothers/1/edit
  def edit
  end

  # POST /auothers
  # POST /auothers.json
  def create
    @auother = Auother.new(auother_params)

    respond_to do |format|
      if @auother.save
        format.html { redirect_to @auother, notice: 'Auother was successfully created.' }
        format.json { render :show, status: :created, location: @auother }
      else
        format.html { render :new }
        format.json { render json: @auother.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auothers/1
  # PATCH/PUT /auothers/1.json
  def update
    respond_to do |format|
      if @auother.update(auother_params)
        format.html { redirect_to @auother, notice: 'Auother was successfully updated.' }
        format.json { render :show, status: :ok, location: @auother }
      else
        format.html { render :edit }
        format.json { render json: @auother.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auothers/1
  # DELETE /auothers/1.json
  def destroy
    @auother.destroy
    respond_to do |format|
      format.html { redirect_to auothers_url, notice: 'Auother was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auother
      @auother = Auother.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auother_params
      params.require(:auother).permit(:name)
    end
end
