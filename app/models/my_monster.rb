class MyMonster < ActiveRecord::Base
  belongs_to :monster
  belongs_to :summoner

  validates :monster_id, :level, :hp_base, :atk_base, :def_base, :vel_base, :cr, :cd, :res, 
        :acc, :awake, :star, presence: true

  def status_rune_hp
	if self.hp_rune.blank? 
			0
	else
		self.hp_rune
	end
  end

  def status_rune_atk
  	if self.atk_rune.blank? 
  			0
  	else
  		self.atk_rune
	end
  end

  def status_rune_def
  	if self.def_rune.blank? 
  			0
  	else
  		self.def_rune
  	end
  end

  def status_rune_vel
  	if self.vel_rune.blank? 
  			0
  	else
  		self.vel_rune
  	end
  end

  def hp_total(hp_b, hp_r)
  	hp_b + hp_r
  end

  def atk_total(atk_b, atk_r)
  	atk_b + atk_r
  end

  def def_total(def_b, def_r)
  	def_b + def_r
  end

  def vel_total(vel_b, vel_r)
  	vel_b + vel_r
  end

end
