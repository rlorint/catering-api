class User < ActiveRecord::Base
	def authenticate(pass)
		self.pass == pass
	end
end
