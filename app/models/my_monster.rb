class MyMonster < ActiveRecord::Base
  belongs_to :monster
  belongs_to :summoner
end
