class BettingsController < ApplicationController
  before_action :set_betting, only: [:show, :edit, :update, :destroy]

  # GET /bettings
  # GET /bettings.json
  def index
    @bettings = Betting.all
  end

  # GET /bettings/1
  # GET /bettings/1.json
  def show
  end

  # GET /bettings/new
  def new
    @betting = Betting.new
  end

  # GET /bettings/1/edit
  def edit
  end

  # POST /bettings
  # POST /bettings.json
  def create
    @betting = Betting.new(betting_params)

    respond_to do |format|
      if @betting.save
        format.html { redirect_to @betting, notice: 'Betting was successfully created.' }
        format.json { render :show, status: :created, location: @betting }
      else
        format.html { render :new }
        format.json { render json: @betting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bettings/1
  # PATCH/PUT /bettings/1.json
  def update
    respond_to do |format|
      if @betting.update(betting_params)
        format.html { redirect_to @betting, notice: 'Betting was successfully updated.' }
        format.json { render :show, status: :ok, location: @betting }
      else
        format.html { render :edit }
        format.json { render json: @betting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bettings/1
  # DELETE /bettings/1.json
  def destroy
    @betting.destroy
    respond_to do |format|
      format.html { redirect_to bettings_url, notice: 'Betting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_betting
      @betting = Betting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def betting_params
      params.require(:betting).permit(:date,:race_course,:race_grade,:race_name,:betting_type,:betting_way,:betting_option,:favorite,:horse_nums,:points,:unit,:total,:income,:loss,:account)
    end
end
