class ShoesController < OpenReadController
  before_action :set_shoe, only: [:show, :update, :destroy]

  # GET /shoes
  def index
    @shoes = Shoe.all

    render json: @shoes
  end

  # GET /shoes/1
  def show
    render json: @shoe
  end

  # POST /shoes
  def create
    @shoe = current_user.shoes.build(new_shoe_params)

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
    def set_shoe
      @shoe = Shoe.find(params[:id])
    end

    def new_shoe_params
      params.require(:shoe)
            .permit(:name, :brand, :caption)
    end

    # Only allow a trusted parameter "white list" through.
    def shoe_params
      params.require(:shoe).permit(:name, :brand, :caption)
    end
end
