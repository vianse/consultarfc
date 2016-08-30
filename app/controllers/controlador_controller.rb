class ControladorController < ApplicationController
  def index
  	if user_signed_in?
  	@sesion = Sesione.where(:user_id => current_user.id).pluck(:id).first
  	if @sesion.nil?
  		redirect_to "/sesion"
  	else
		redirect_to "/home"
  	end
  else
  end
  end
end
