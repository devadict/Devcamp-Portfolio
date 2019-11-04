class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image

	scope :angular, -> {where(subtitle: 'Angular')}
end
