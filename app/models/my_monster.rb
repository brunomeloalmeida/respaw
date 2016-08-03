class MyMonster < ActiveRecord::Base
  belongs_to :monster
  belongs_to :summoner

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

end
