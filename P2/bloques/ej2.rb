def procesar_hash (hash, proc)
    h = Hash.new
    hash.each do |key, value|
       h[value]= proc.call(key)
    end
    puts h
end

hash = { 'clave' => 1, :otra_clave => 'valor' }
procesar_hash(hash, ->(x) { x.to_s.upcase })
# => { 1 => 'CLAVE', 'valor' => 'OTRA_CLAVE' }
