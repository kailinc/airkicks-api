class ShoesController < OpenReadController
  before_action :set_shoe, only: [:update, :destroy]

  # GET /shoes
  def index
    @shoes = Shoe.all

    render json: @shoes
  end

  # GET /shoes/1
  def show
    @shoe = Shoe.find(params[:id])
    render json: @shoe, serializer: ShoeIndSerializer
  end

  # POST /shoes
  def create
    @shoe = current_user.shoes.build(shoe_params)

    if @shoe.save
      render json: @shoe, status: :created, location: @shoe
    else
      render json: @shoe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shoes/1
  def update
    if @shoe.update(shoe_params)
      render json: @shoe
    else
      render json: @shoe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shoes/1
  def destroy
    @shoe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # set up shoe for the user
    def set_shoe
      @shoe = current_user.shoes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shoe_params
      params.require(:shoe).permit(:name, :brand, :caption)
    end
end
