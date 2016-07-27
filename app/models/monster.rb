class Monster < ActiveRecord::Base
	has_many :my_monster
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/ # Valida somente imagens, não permitindo o usuário enviar arquivos de textos ou .zip
end
