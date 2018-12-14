class OperacionController < ApplicationController
    protect_from_forgery with: :exception
    

    def suscripcion
        @idServicio = params[:id]
        @msisdn = session[:msisdn]
    end

    def create
        @suscripcion = UsuarioServicio.new
        @suscripcion.msisdn = params[:msisdn]
        @suscripcion.servicio = params[:servicio]
        @suscripcion.save
        redirect_to "/home/index"
    end

    def desuscripcion
        @idServicio = params[:id]
        @msisdn = session[:msisdn]
    end

    def delete

        msisdn = params[:msisdn]
        servicio = params[:servicio]
        
        @suscripcion = UsuarioServicio.where("msisdn = ?  AND servicio = ?", msisdn, servicio)  
        @suscripcion[0].destroy

        @desuscripcion = Historico.new
        @desuscripcion.msisdn = params[:msisdn]
        @desuscripcion.servicio = params[:servicio]
        @desuscripcion.save
        redirect_to "/home/index"
    end

end
