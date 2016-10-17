class Monster < ActiveRecord::Base
	has_many :my_monsters
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
	has_attached_file :avatar_awake, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/ # Valida somente imagens, não permitindo o usuário enviar arquivos de textos ou .zip
  	validates :name, :element, :star, :hp_base, :atk_base, :def_base, :vel_base, :cr, 
        :cd, :res, :acc, :hp_awake, :atk_awake, :def_awake, :vel_awake, :cr_awake, :cd_awake, :res_awake, :acc_awake, 
        :high_essence_elemental, :mid_essence_elemental, :low_essence_elemental, :high_essence_magic, :mid_essence_magic, :low_essence_magic, :avatar, presence: true

	def self.search(search)
	  if search
	    where('name ILIKE ?', "%#{search}%")
	  else
	    Monster.all
	  end
	end   	
end
