class MonstersController < ApplicationController
  before_action :set_monster, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_summoner!, except: [:index, :show]

  # GET /monsters
  # GET /monsters.json
  def index
    @monsters = Monster.search(params[:search]).order(:name)
  end

  # GET /monsters/1
  # GET /monsters/1.json
  def show
  end

  # GET /monsters/new
  def new
    if current_summoner.email != 'bruno_melo_almeida@hotmail.com'
      redirect_to welcome_index_path
    else
      @monster = Monster.new
    end
  end

  # GET /monsters/1/edit
  def edit
  end

  # POST /monsters
  # POST /monsters.json
  def create
    if current_summoner.email != 'bruno_melo_almeida@hotmail.com'
      format.html { redirect_to welcome_index_path, notice: 'Somente usuários autorizados' }
    else
      @monster = Monster.new(monster_params)

      respond_to do |format|
        if @monster.save
          format.html { redirect_to @monster, notice: 'Monster was successfully created.' }
          format.json { render :show, status: :created, location: @monster }
        else
          format.html { render :new }
          format.json { render json: @monster.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /monsters/1
  # PATCH/PUT /monsters/1.json
  def update
    if current_summoner.email != 'bruno_melo_almeida@hotmail.com'
      format.html { redirect_to welcome_index_path, notice: 'Somente usuários autorizados' }
    else
      respond_to do |format|
        if @monster.update(monster_params)
          format.html { redirect_to @monster, notice: 'Monster was successfully updated.' }
          format.json { render :show, status: :ok, location: @monster }
        else
          format.html { render :edit }
          format.json { render json: @monster.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /monsters/1
  # DELETE /monsters/1.json
  def destroy
    if current_summoner.email != 'bruno_melo_almeida@hotmail.com'
      format.html { redirect_to welcome_index_path, notice: 'Somente usuários autorizados' }
    else
      @monster.destroy
      respond_to do |format|
        format.html { redirect_to monsters_url, notice: 'Monster was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monster
      @monster = Monster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monster_params
      params.require(:monster).permit(:name, :element, :star, :hp_base, :atk_base, :def_base, :vel_base, :cr, 
        :cd, :res, :acc, :hp_awake, :atk_awake, :def_awake, :vel_awake, :cr_awake, :cd_awake, :res_awake, :acc_awake, 
        :high_essence_elemental, :mid_essence_elemental, :low_essence_elemental, :high_essence_magic, :mid_essence_magic, :low_essence_magic, :runes, :avatar, :avatar_awake,
        :skill1, :skill2, :skill3, :skill4, :avatar_skill_1, :avatar_skill_2, :avatar_skill_3, :avatar_skill_4 )
    end
end
