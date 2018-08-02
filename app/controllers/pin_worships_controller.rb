class PinWorshipsController < ApplicationController
  before_action :set_pin_worship, only: [:show, :edit, :update, :destroy]

  # worship /pin_worships
  # worship /pin_worships.json
  def create


    @worship = Worship.find(params[:worship_id])
    @pin_worship = @worship.pin_worships.create(params[:comment].permit(:name, :comment))
    redirect_to worship_path(@worship)


    @pin_worship = PinWorship.new(pin_worship_params)

    respond_to do |format|
      if @pin_worship.save
        format.html { redirect_to @pin_worship, notice: 'Pin worship was successfully created.' }
        format.json { render :show, status: :created, location: @pin_worship }
      else
        format.html { render :new }
        format.json { render json: @pin_worship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pin_worships/1
  # PATCH/PUT /pin_worships/1.json


  # DELETE /pin_worships/1
  # DELETE /pin_worships/1.json
  def destroy
    @pin_worship.destroy
    respond_to do |format|
      format.html { redirect_to pin_worships_url, notice: 'Pin worship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pin_worship
      @pin_worship = PinWorship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pin_worship_params
      params.require(:pin_worship).permit(:title, :lat, :lng, :img_url, :info_text)
    end
end
