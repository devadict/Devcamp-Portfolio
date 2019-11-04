class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image

	scope :angular, -> {where(subtitle: 'Angular')}

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "https://via.placeholder.com/600x400"
		
	end
end


