require 'methods_counter'

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
p a.invoked?(:hi)
# => false
p b.invoked?(:hi)
# => false
a.hi
# Imprime "Hey!"
p a.invoked(:hi)
# => 1
p b.invoked(:hi)
# => 0
