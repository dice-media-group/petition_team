class BallotInititivesController < ApplicationController
  before_action :set_ballot_inititive, only: [:show, :edit, :update, :destroy]

  # GET /ballot_inititives
  # GET /ballot_inititives.json
  def index
    @ballot_inititives = BallotInititive.all
  end

  # GET /ballot_inititives/1
  # GET /ballot_inititives/1.json
  def show
  end

  # GET /ballot_inititives/new
  def new
    @ballot_inititive = BallotInititive.new
  end

  # GET /ballot_inititives/1/edit
  def edit
  end

  # POST /ballot_inititives
  # POST /ballot_inititives.json
  def create
    @ballot_inititive = BallotInititive.new(ballot_inititive_params)

    respond_to do |format|
      if @ballot_inititive.save
        format.html { redirect_to @ballot_inititive, notice: 'Ballot inititive was successfully created.' }
        format.json { render :show, status: :created, location: @ballot_inititive }
      else
        format.html { render :new }
        format.json { render json: @ballot_inititive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ballot_inititives/1
  # PATCH/PUT /ballot_inititives/1.json
  def update
    respond_to do |format|
      if @ballot_inititive.update(ballot_inititive_params)
        format.html { redirect_to @ballot_inititive, notice: 'Ballot inititive was successfully updated.' }
        format.json { render :show, status: :ok, location: @ballot_inititive }
      else
        format.html { render :edit }
        format.json { render json: @ballot_inititive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ballot_inititives/1
  # DELETE /ballot_inititives/1.json
  def destroy
    @ballot_inititive.destroy
    respond_to do |format|
      format.html { redirect_to ballot_inititives_url, notice: 'Ballot inititive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ballot_inititive
      @ballot_inititive = BallotInititive.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ballot_inititive_params
      params.require(:ballot_inititive).permit(:name, :team_id)
    end
end
