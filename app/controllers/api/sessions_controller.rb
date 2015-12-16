class Api::SessionsController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	def create
		user = User.find_by(email: session_params[:email])
		if(user && user.authenticate(session_params[:pass])) then
			render json: user, status: :created
		else 
			render nothing: true, stratus: :forbidden
		end
	end

	private

	def session_params
		params.require(:session).permit(:email, :pass)
	end

end
