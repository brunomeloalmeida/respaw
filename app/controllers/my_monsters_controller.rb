class MyMonstersController < ApplicationController
  before_action :set_my_monster, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_summoner!, except: [:index, :show]

  # GET /my_monsters
  # GET /my_monsters.json
  def index
    @my_monsters = MyMonster.where(summoner_id: current_summoner.id).order(:level)
  end

  # GET /my_monsters/1
  # GET /my_monsters/1.json
  def show
  end

  # GET /my_monsters/new
  def new
    @my_monster = MyMonster.new
    @monsters = Monster.order('name asc').all
    #@monsters = Monster.where("name LIKE ?", "%Inugami%")
  end

  # GET /my_monsters/1/edit
  def edit
    @monsters = Monster.all.order(:name)
  end

  # POST /my_monsters
  # POST /my_monsters.json
  def create
    @my_monster = MyMonster.new(my_monster_params)
    @my_monster.summoner_id = current_summoner.id

    respond_to do |format|
      if @my_monster.save
        format.html { redirect_to @my_monster, notice: 'My monster was successfully created.' }
        format.json { render :show, status: :created, location: @my_monster }
      else
        format.html { render :new }
        format.json { render json: @my_monster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_monsters/1
  # PATCH/PUT /my_monsters/1.json
  def update
    if @my_monster.summoner_id == current_summoner.id
      respond_to do |format|
        if @my_monster.update(my_monster_params)
          format.html { redirect_to @my_monster, notice: 'My monster was successfully updated.' }
          format.json { render :show, status: :ok, location: @my_monster }
        else
          format.html { render :edit }
          format.json { render json: @my_monster.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /my_monsters/1
  # DELETE /my_monsters/1.json
  def destroy
    if @my_monster.summoner_id == current_summoner.id
      @my_monster.destroy
      respond_to do |format|
        format.html { redirect_to my_monsters_url, notice: 'My monster was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_monster
      @my_monster = MyMonster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_monster_params
      params.require(:my_monster).permit(:monster_id, :level, :hp_base, :hp_rune, :atk_base, :atk_rune, :def_base, :def_rune, :vel_base, :vel_rune, :cr, :cd, :res, :acc, :runes)
    end
end
