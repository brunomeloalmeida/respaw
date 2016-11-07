class Galery < ActiveRecord::Base
	attr_accessible :file
  	has_attached_file :file, styles: { thumbnail: '100x100>' }
end
