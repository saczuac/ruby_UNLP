# TODO: Terminarlo, declarar bien el alias_method. No funciona este ejercicio

module Countable

    def self.included(mod)
       mod.extend(ClassMethods) ## Agrego métodos de clase
    end

    def invoked? (sym)
        puts methods_count[sym] > 0
    end

    def invoked (sym)
        puts methods_count[sym]
    end

    def count_inv
        methods_count[sym]++
    end
    ## siguientes métodos son de instancia
    module ClassMethods
        def count_invocations_of (sym)
            methods_count << {sym => 0}
        end

    end
end

class Greeter
# Incluyo el Mixin
    include Countable
    def hi
        puts 'Hey!'
    end
    def bye
        puts 'See you!'
    end
    # Indico que quiero llevar la cuenta de veces que se invoca el método #hi
    count_invocations_of :hi
end

a = Greeter.new
b = Greeter.new
a.invoked?(:hi)
# => false
b.invoked?(:hi)
# => false
a.hi
# Imprime "Hey!"
a.invoked(:hi)
# => 1
b.invoked(:hi)
# => 0
