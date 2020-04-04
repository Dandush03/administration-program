class Client < ApplicationRecord
	validates :name, presence: true, length: { maximum: 30 }
	belongs_to :organization, class_name: 'Organization'
end
