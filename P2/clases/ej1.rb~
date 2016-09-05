class Motorizado
  attr_accesor :llave
  def arrancar ()
     # arranca el motor
  end
end

class Auto < Motorizado
  attr_accesor :freno_de_mano, :cambio
    def initialize(freno_de_mano = false, cambio = nil)
		self.freno_de_mano = freno_de_mano
        self.cambio = cambio
    end
	def arrancar
		if !freno_de_mano && !cambio
          puts 'Arrancando auto'
        end
    end
end 
