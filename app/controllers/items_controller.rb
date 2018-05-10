class ItemsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  add_breadcrumb 'Home', :root_path
  before_action :set_item, only: [:show, :edit, :update, :destroy, :active, :inactive]

  # GET /items
  # GET /items.json
  def index
    add_breadcrumb 'Items', '#'
    @items = Item.order(release_date: :desc)

    # @key_search = AppUtils.escape_search_query(params[:q])

    # @items = @items.where("name ILIKE '%#{@key_search}%'
    #                                 OR slug ILIKE '%#{@key_search}%'
    #                                 OR address ILIKE '%#{@key_search}%'
    #                                 OR website ILIKE '%#{@key_search}%'") unless @key_search.blank?

    page = params[:page].to_i < 1 ? 1 : params[:page].to_i
    @page_name = 'items'
    @page_value = per_page(@page_name)
    @items = @items.paginate(page: page, per_page: @page_value)
  end

  # GET /items/1
  # GET /items/1.json
  def show
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
      @company = Company.friendly.find(params[:company_id])
      @item = Item.friendly.find(params[:id])
      add_breadcrumb @company.name, company_path(@company.slug)
      add_breadcrumb @item.name, item_path(@company.slug, @item.slug)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:number, :release_date, :name, :batch, :description, :style, :abv, :case_vol, :can_limit, :price, :price_four_pack, :additional, :canning_date, :canning_phrase, :label_inspiration, :instagram_url, :instagram_embed, :instagram_image, :release_date_difference_seconds, :company_id, hop_ids: [])
    end
end
