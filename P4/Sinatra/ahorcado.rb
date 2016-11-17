class Ahorcado
	attr_accessor :palabra, :intentos, :adivinadas
	
	def initialize(palabra)
		self.palabra= palabra
		self.intentos = 0
		self.adivinadas = []
	end

	def adivino_algo?
		self.adivinadas.length > 0
	end

	def reset
		self.intentos = 0
		self.adivinadas = []
	end

	def estado
		s = ""
		if adivino_algo?
			palabra.each_char { |chr| self.adivinadas.include?(chr) ? s << chr : s << '_'  }
		else 
			1.upto(palabra.length) { s << '_'}
		end
		s
	end

	def intenta_adivinar(letra)
		if self.palabra.include? letra
			self.adivinadas << letra
		else
			self.intentos = self.intentos + 1 
		end
	end

end