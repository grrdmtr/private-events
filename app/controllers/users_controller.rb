class UsersController < ApplicationController
  before_action :set_User, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /Users or /Users.json
  def index
    @users = User.all.order('created_at DESC')
    @user = User.new
  end

  # GET /Users/1 or /Users/1.jsons
  def show
  end

  # GET /Users/new
  def new
    @user = current_user.Users.build
  end

  # GET /Users/1/edit
  def edit
  end

  # POST /Users or /Users.json
  def create
    @user = current_user.Users.build(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Users/1 or /Users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Users/1 or /Users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_User
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def User_params
      params.require(:user).permit(:date)
    end
end
