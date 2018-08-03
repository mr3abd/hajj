class PinpinPinWorshopssesController < ApplicationController
  before_action :set_pinpin_pin_worshopss, only: [:show, :edit, :update, :destroy]

  # GET /pinpin_pin_worshopsses
  # GET /pinpin_pin_worshopsses.json
  def index
    @pinpin_pin_worshopsses = PinpinPinWorshopss.all
  end

  # GET /pinpin_pin_worshopsses/1
  # GET /pinpin_pin_worshopsses/1.json
  def show
  end

  # GET /pinpin_pin_worshopsses/new
  def new
    @pinpin_pin_worshopss = PinpinPinWorshopss.new
  end

  # GET /pinpin_pin_worshopsses/1/edit
  def edit
  end

  # POST /pinpin_pin_worshopsses
  # POST /pinpin_pin_worshopsses.json
  def create
    @pinpin_pin_worshopss = PinpinPinWorshopss.new(pinpin_pin_worshopss_params)

    respond_to do |format|
      if @pinpin_pin_worshopss.save
        format.html { redirect_to @pinpin_pin_worshopss, notice: 'Pinpin pin worshopss was successfully created.' }
        format.json { render :show, status: :created, location: @pinpin_pin_worshopss }
      else
        format.html { render :new }
        format.json { render json: @pinpin_pin_worshopss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pinpin_pin_worshopsses/1
  # PATCH/PUT /pinpin_pin_worshopsses/1.json
  def update
    respond_to do |format|
      if @pinpin_pin_worshopss.update(pinpin_pin_worshopss_params)
        format.html { redirect_to @pinpin_pin_worshopss, notice: 'Pinpin pin worshopss was successfully updated.' }
        format.json { render :show, status: :ok, location: @pinpin_pin_worshopss }
      else
        format.html { render :edit }
        format.json { render json: @pinpin_pin_worshopss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pinpin_pin_worshopsses/1
  # DELETE /pinpin_pin_worshopsses/1.json
  def destroy
    @pinpin_pin_worshopss.destroy
    respond_to do |format|
      format.html { redirect_to pinpin_pin_worshopsses_url, notice: 'Pinpin pin worshopss was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pinpin_pin_worshopss
      @pinpin_pin_worshopss = PinpinPinWorshopss.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pinpin_pin_worshopss_params
      params.require(:pinpin_pin_worshopss).permit(:text)
    end
end
