class ApiController < ApplicationController
	def require_login
		authenticate_token || render_a
	end
	def authenticate_token
		authenticate_with_http_token do |token, options|
			User.find_by(token: token)
	    end
	end
end
