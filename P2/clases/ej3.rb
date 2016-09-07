module Reverso
   def di_tcejbo ()
       self.object_id.to_s.reverse
   end
   def ssalc ()
       self.class.to_s.reverse
   end
end

class String
    include Reverso
end

s = "hola"
puts s.di_tcejbo
puts s.ssalc
