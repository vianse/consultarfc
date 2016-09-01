class Api::V1::SesionController <ApplicationController
 skip_before_filter :verify_authenticity_token
 
 def index

 end

 def create

    #sesion_params.map do |a|
           @crear_sesion = Sesione.create({
            :id_user => params[:id_user], 
            :name => params[:name], 
            :user_id => params[:user_id]
            })
       respond_to do |format|
        if @crear_sesion.save
          format.html { redirect_to "/home", notice: 'Sesione was successfully created.' }
          format.json { render :show, status: :created, location: @crear_sesion }
        else
          format.html { render :new }
          format.json { render json: @crear_sesion.errors, status: :unprocessable_entity }
        end
      end
   # end  
end


 private
  def sesion_params
   params.require(:sesion).map do |p|
   ActionController::Parameters.new(p.to_hash).permit(:id_user, :name, :user_id)

   end
  end
end