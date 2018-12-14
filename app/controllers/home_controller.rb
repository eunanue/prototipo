class HomeController < ApplicationController
  before_action { flash.clear }
  def index
      @ServiciosPvs = ServicioPv.all()
      @msisdn = session[:msisdn]
  end

  def historicos
    @Historicos = Historico.where("msisdn = ?",session[:msisdn])
  end

  def mis_compras
    @MisCompras = UsuarioServicio.where("msisdn = ?",session[:msisdn])
  end
end
