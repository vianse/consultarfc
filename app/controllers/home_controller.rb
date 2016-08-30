class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
  	@id_user = Sesione.where(:user_id => current_user.id).pluck(:id_user).first
  end
end
