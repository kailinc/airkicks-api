class ConnectShoeCollectionsController < ApplicationController
  before_action :set_connect_shoe_collection, only: [:show, :destroy]
  # GET /connect_shoe_collections
  def index
    @connect_shoe_collections = ConnectShoeCollection.all
    render json: @connect_shoe_collections
  end

  # GET /connect_shoe_collections/1
  def show
    render json: @connect_shoe_collection
  end

  # POST /connect_shoe_collections
  def create
    @connect_shoe_collection = ConnectShoeCollection.create(connect_shoe_collection_params)

    if @connect_shoe_collection.save
      render json: @connect_shoe_collection, status: :created, location: @connect_shoe_collection
    else
      render json: @connect_shoe_collection.errors, status: :unprocessable_entity
    end
  end


  # DELETE /connect_shoe_collections/1
  def destroy
    @connect_shoe_collection.destroy
    head :no_content
  end

  private
    # Only allow a trusted parameter "white list" through.
    def connect_shoe_collection_params
      params.require(:connect_shoe_collection).permit(:shoe_id, :collection_id)
    end

    def set_connect_shoe_collection
      @connect_shoe_collection = ConnectShoeCollection.find(params[:id])
    end
end
