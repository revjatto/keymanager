class KeylogsController < ApplicationController
  before_action :set_keylog, only: [:show, :edit, :update, :destroy]

def index
  @keylogs = Keylog.all
  if params[:search]
    @keylogs = Keylog.search(params[:search]).order("created_at DESC")
  else
    @keylogs = Keylog.all
  end
end
def blog
end
 
  # GET /keylogs/1
  # GET /keylogs/1.json
  def show
  end

  # GET /keylogs/new
  def new
    @keylog = Keylog.new
  end

  # GET /keylogs/1/edit
  def edit
  end

  # POST /keylogs
  # POST /keylogs.json
  def create
    @keylog = Keylog.new(keylog_params)

    respond_to do |format|
      if @keylog.save
        format.html { redirect_to @keylog, notice: 'Keylog was successfully created.' }
        format.json { render :show, status: :created, location: @keylog }
      else
        format.html { render :new }
        format.json { render json: @keylog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keylogs/1
  # PATCH/PUT /keylogs/1.json
  def update
    respond_to do |format|
      if @keylog.update(keylog_params)
        format.html { redirect_to @keylog, notice: 'Keylog was successfully updated.' }
        format.json { render :show, status: :ok, location: @keylog }
      else
        format.html { render :edit }
        format.json { render json: @keylog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keylogs/1
  # DELETE /keylogs/1.json
  def destroy
    @keylog.destroy
    respond_to do |format|
      format.html { redirect_to keylogs_url, notice: 'Keylog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keylog
      @keylog = Keylog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def keylog_params
      params.require(:keylog).permit(:key_number, :building, :floor, :room_number, :key_type, :key_ref, :description, :key_holder, :information, :key_with)
    end
end
