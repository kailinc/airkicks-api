class ConnectsController < OpenReadController
  before_action :set_connect, only: [:destroy]

  # GET /connects
  def index
    @connects = Connect.all

    render json: @connects
  end

  # GET /connects/1
  def show
    render json: @connect
  end

  # POST /connects
  def create
    @connect = current_user.connects.build(connect_params)

    if @connect.save
      render json: @connect, status: :created, location: @connect
    else
      render json: @connect.errors, status: :unprocessable_entity
    end
  end


  # DELETE /connects/1
  def destroy
    @connect.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connect
      @connect = current_user.connects.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def connect_params
      params.require(:connect).permit(:user_id, :shoe_id, :collection_id)
    end
end
