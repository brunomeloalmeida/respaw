class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_summoner!, except: [:index, :show]
  # GET /users
  # GET /users.json
  def index
    @users = User.order(:name)
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    summoner_user = User.find(params[:id]).summoner_id
    @user_monsters = Summoner.find(summoner_user).my_monsters
  end

  # GET /users/new
  def new
    if current_summoner.email != 'bruno_melo_almeida@hotmail.com'
      format.html { redirect_to welcome_index_path, notice: 'Somente usuários autorizados' }
    else
      @user = User.new
      @summoners = Summoner.all.order(:email)
    end
  end

  # GET /users/1/edit
  def edit
    if current_summoner.email != 'bruno_melo_almeida@hotmail.com'
      format.html { redirect_to welcome_index_path, notice: 'Somente usuários autorizados' }
    else
      @summoners = Summoner.all.order(:email)
    end
  end

  # POST /users
  # POST /users.json
  def create
    if current_summoner.email != 'bruno_melo_almeida@hotmail.com'
      format.html { redirect_to welcome_index_path, notice: 'Somente usuários autorizados' }
    else
      @user = User.new(user_params)

      respond_to do |format|
        if @user.save
          format.html { redirect_to @user, notice: 'User was successfully created.' }
          format.json { render :show, status: :created, location: @user }
        else
          format.html { render :new }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if current_summoner.email != 'bruno_melo_almeida@hotmail.com'
      format.html { redirect_to welcome_index_path, notice: 'Somente usuários autorizados' }
    else
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
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    if current_summoner.email != 'bruno_melo_almeida@hotmail.com'
      format.html { redirect_to welcome_index_path, notice: 'Somente usuários autorizados' }
    else
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :user_name, :level, :summoner_id)
    end
end
