class User < ActiveRecord::Base

	has_secure_password

	validates :name, :email, presence: true

	has_many :reviews
	has_many :products, through: :reviews

	before_save :set_default_avatar

	def set_default_avatar
		if avatar.blank?
			self.avatar = "http://www.mediabistro.com/alltwitter/files/2011/10/twitter-default-avatar-egg.jpg"
		end
	end
end
