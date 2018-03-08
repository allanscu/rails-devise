class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy, :active, :inactive]
  before_action :authenticate_user!, :except => [:show, :index]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all.order("release_date DESC")
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.friendly.find(params[:id])

    @item_avg_abv = Item.average(:abv)
  end

  # GET /items/new
  def new
    @item = Item.new
    @company = Company.all.order(:name)
  end

  # GET /items/1/edit
  def edit
    @company = Company.all.order(:name)
  end

  def active
    @item.active
    redirect_to items_url
  end
    
  def inactive
    @item.inactive
    redirect_to items_url
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:number, :release_date, :name, :description, :style, :abv, :case_vol, :can_limit, :price, :price_four_pack, :additional, :canning_date, :canning_phrase, :label_inspiration, :instagram_url, :instagram_embed, :instagram_image, :release_date_difference_seconds, :company_id, hop_ids: [])
    end
end
