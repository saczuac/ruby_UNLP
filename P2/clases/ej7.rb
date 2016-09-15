class TrueClass
    def opposite
        !self
    end
end

class FalseClass
    def opposite
        !self
    end
end

puts false.opposite
puts true.opposite
puts true.opposite.opposite
## También se podría haber declarado como Mixin
