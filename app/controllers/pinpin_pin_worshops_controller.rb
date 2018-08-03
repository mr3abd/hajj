class PinpinPinWorshopsController < ApplicationController
  before_action :set_pinpin_pin_worshop, only: [:show, :edit, :update, :destroy]

  # GET /pinpin_pin_worshops
  # GET /pinpin_pin_worshops.json
  def index
    @pinpin_pin_worshops = PinpinPinWorshop.all
  end

  # GET /pinpin_pin_worshops/1
  # GET /pinpin_pin_worshops/1.json
  def show
  end

  # GET /pinpin_pin_worshops/new
  def new
    @pinpin_pin_worshop = PinpinPinWorshop.new
  end

  # GET /pinpin_pin_worshops/1/edit
  def edit
  end

  # POST /pinpin_pin_worshops
  # POST /pinpin_pin_worshops.json
  def create
    @pinpin_pin_worshop = PinpinPinWorshop.new(pinpin_pin_worshop_params)

    respond_to do |format|
      if @pinpin_pin_worshop.save
        format.html { redirect_to @pinpin_pin_worshop, notice: 'Pinpin pin worshop was successfully created.' }
        format.json { render :show, status: :created, location: @pinpin_pin_worshop }
      else
        format.html { render :new }
        format.json { render json: @pinpin_pin_worshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pinpin_pin_worshops/1
  # PATCH/PUT /pinpin_pin_worshops/1.json
  def update
    respond_to do |format|
      if @pinpin_pin_worshop.update(pinpin_pin_worshop_params)
        format.html { redirect_to @pinpin_pin_worshop, notice: 'Pinpin pin worshop was successfully updated.' }
        format.json { render :show, status: :ok, location: @pinpin_pin_worshop }
      else
        format.html { render :edit }
        format.json { render json: @pinpin_pin_worshop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pinpin_pin_worshops/1
  # DELETE /pinpin_pin_worshops/1.json
  def destroy
    @pinpin_pin_worshop.destroy
    respond_to do |format|
      format.html { redirect_to pinpin_pin_worshops_url, notice: 'Pinpin pin worshop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pinpin_pin_worshop
      @pinpin_pin_worshop = PinpinPinWorshop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pinpin_pin_worshop_params
      params.require(:pinpin_pin_worshop).permit(:text)
    end
end
