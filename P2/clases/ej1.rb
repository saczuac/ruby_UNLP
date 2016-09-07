class Motorizado
  attr_accessor :llave
  def arrancar ()
     puts 'Arrancando '
  end
end

class Auto < Motorizado
  attr_accessor :freno_de_mano, :cambio
    def initialize(freno_de_mano = false, cambio = nil)
		self.freno_de_mano = freno_de_mano
        self.cambio = cambio
    end
	def arrancar
		if !freno_de_mano && !cambio
          super
        end
    end
end

class Moto < Motorizado
    attr_accessor :patada
    def initialize(patada = true)
        self.patada = patada
    end
    def arrancar
        if patada
            super
        end
    end
end

class Lancha < Motorizado
end

class Taller
  def probar(objeto)
    objeto.arrancar
  end
end

class Motosierra < Motorizado
end

taller = Taller.new
taller.probar(Auto.new)
taller.probar(Moto.new)
taller.probar(Lancha.new)
