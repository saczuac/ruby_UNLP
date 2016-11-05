module Countable

    def self.included(mod)
       mod.extend(ClassMethods) ## Agrego métodos de clase
    end

    def invoked? (sym)
      methods_count[sym] > 0
    end

    def methods_count
       @methods_count ||= Hash.new(0)
    end

    def invoked (sym)
     methods_count[sym]
    end

    module ClassMethods

        def count_invocations_of (sym)
          alias_method :"orig_#{sym}", sym
          define_method sym do
            methods_count[sym] +=1
            send :"orig_#{sym}"
          end
        end

    end
end


#class Greeter
# Incluyo el Mixin
#    include Countable

#    def hi
#        puts 'Hey!'
#    end
#    def bye
#        puts 'See you!'
#    end
    # Indico que quiero llevar la cuenta de veces que se invoca el método #hi
#    count_invocations_of :hi
#end

#a = Greeter.new
#b = Greeter.new
#p a.invoked?(:hi)
# => false
#p b.invoked?(:hi)
# => false
#a.hi
# Imprime "Hey!"
#p a.invoked(:hi)
# => 1
#p b.invoked(:hi)
# => 0
