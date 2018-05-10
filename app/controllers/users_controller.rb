class UsersController < ApplicationController
  before_action :authenticate_user!
  add_breadcrumb 'Home', :root_path

  def index
    add_breadcrumb 'Users', '#'
    @users = User.order(created_at: :desc)

    page = params[:page].to_i < 1 ? 1 : params[:page].to_i
    @page_name = 'items'
    @page_value = per_page(@page_name)
    @users = @users.paginate(page: page, per_page: @page_value)
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to root_path, :alert => 'Access denied.'
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    
  def user_params
    params.require(:user).permit(:name, :email, :admin)
  end

end