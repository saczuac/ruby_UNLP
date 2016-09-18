require 'matrix'
class Image
  attr_accessor :data, :size

  def initialize(data = nil, size = 1024)
    self.size = size
    self.data = data || Matrix.build(size) { Math::PI }
  end

  def header_bytes
    Matrix.rows([data.first(size)])
  end

  def filter (grade)
		filtered_data = data.lazy.map {|e| e ** grade }
	  Image.new filtered_data
  end

# Distintos filtros de imágenes:
  def filter_a
     filter 1.2
  end
  def filter_b
    filter 1.4
  end
  def filter_c
    filter 1.8
  end
  def filter_d
    filter 2
  end
  def filter_e
    filter 2.2
  end
  def filter_f
    filter 2.4
  end
#- Fin de filtros
  def all_filters
    ('a'..'f').inject(self) do |pipe, type|
      pipe.public_send "filter_#{type}"
    end
  end
end
