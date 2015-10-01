class Pin < ActiveRecord::Base
	Paperclip.options[:command_path] = 'C:/Program Files/ImageMagick-6.9.2-Q16'
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300", :thumb => "100x100" }
	validates :image, presence: true
	validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

end
